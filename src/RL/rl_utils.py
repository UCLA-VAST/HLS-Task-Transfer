# rl_utils works above dse.py

from src.parameter import DesignPoint, DesignSpace, topo_sort_param_ids
from src.programl_data import create_edge_index
from src.utils import get_root_path, load
from src.saver import saver
from src.config import FLAGS
from src.config_ds import build_config
from typing import List
from torch_geometric.data import Data
from glob import glob, iglob
from typing import Any, Dict, List, Callable, Tuple
from tqdm import tqdm
import numpy as np
import networkx as nx
import multiprocessing as mp
import os, pickle, pickle5, io, sys, json, random, torch

# useful subroutines in process oriented style

def point_to_str(point: DesignPoint):
    ret = ''
    for k in sorted(point.keys()):
        ret += f'_{k}_{point[k]}'
    return ret

def print_logs(f, logs: List[str]):
    f.write('\n'.join(logs))
    f.write('\n')
    for log in logs:
        print(log)
        
def verify_point(ds: DesignSpace, point: DesignPoint):
    all_keys = ds.keys()
    for key in all_keys:
        if key not in point:
            return False
    for pid in point.keys():
        param = ds[pid]
        options = eval(param.option_expr, point.copy())
        value = point[pid]
        if not options:
            return False
        if value not in options:
            return False
    return True

def get_graph(path_graph: str, kernel_name: str, silent=False) -> nx.Graph:
    if FLAGS.graph_type == '':
        pruner = 'extended'
        gexf_file = sorted([f for f in iglob(path_graph + "/**/*", recursive=True) if f.endswith('.gexf') and f'{kernel_name}_' in f and pruner not in f])
    else:
        gexf_file = sorted([f for f in glob(path_graph + "/**/*") if f.endswith('.gexf') and f'{kernel_name}_' in f and FLAGS.graph_type in f])
    if not silent: print('Graph file path =', gexf_file)
    # print(gexf_file, glob(path_graph))
    assert len(gexf_file) == 1, gexf_file
    # self.graph_path = join(path_graph, f'{kernel_name}_processed_result.gexf')
    graph_path = os.path.join(path_graph, gexf_file[0])
    return nx.read_gexf(graph_path)

def get_config_base(dataset: str):
    return os.path.join(get_root_path(), 'dse_database', dataset, 'config')

def get_config_path(dataset: str, kernel: str):
    return f'{get_root_path()}/dse_database/{dataset}/config/{kernel}_ds_config.json'

def get_graph_path(dataset: str):
    return os.path.join(get_root_path(), 'dse_database', 'programl', dataset, 'processed')

def get_pragma_dim():
    if FLAGS.encoder_path is not None:
        ver_code = 'v20' if FLAGS.v2_db else 'v18'
        return load(os.path.join(os.path.dirname(FLAGS.encoder_path), f'{ver_code}_pragma_dim'))
    else:
        raise NotImplementedError()
    
def load_config(config_path: str, logger, silent = False) -> Dict[str, Any]:
    try:
        if not os.path.exists(config_path):
            print('Config JSON file not found: %s', config_path)
            raise RuntimeError()

        if not silent: print('Loading configurations')
        with open(config_path, 'r', errors='replace') as filep:
            try:
                user_config = json.load(filep)
            except ValueError as err:
                print('Failed to load config: %s', str(err))
                raise RuntimeError()

        config = build_config(user_config, logger)
        if config is None:
            print('Config %s is invalid', config_path)
            raise RuntimeError()
    except RuntimeError:
        sys.exit(1)

    return config
        
def point_to_cpu(point: DesignPoint):
    if point == None:
        return
    for k in point.keys():
        if not isinstance(point[k], str) and not isinstance(point[k], int):
            point[k] = point[k].detach().cpu().numpy()
            if isinstance(point[k], np.ndarray):
                point[k] = int(point[k][0])
                
def fresh_policy_head(inp_dim: int, out_dim: int, hidden_dim: int, device, log_softmax: bool=False):
    final_layer = torch.nn.Softmax()
    if log_softmax:
        final_layer = torch.nn.LogSoftmax()
    return torch.nn.Sequential(
        torch.nn.Linear(inp_dim, hidden_dim),
        torch.nn.ReLU(),
        torch.nn.Linear(hidden_dim, hidden_dim),
        torch.nn.ReLU(),
        torch.nn.Linear(hidden_dim, out_dim),
        final_layer
    ).to(device)
    
import matplotlib.pyplot as plt
def plot(rewards: List[float], fig_path: str = 'log/{}.png', title: str = None):
    plt.plot(np.arange(len(rewards)), np.array(rewards))
    if title is not None:
        assert isinstance(title, str)
        plt.title(title)
    plt.savefig(fig_path.format('cartpole_reward'))
    plt.close()
    
    
class RoundAboutPickler(pickle.Unpickler):
    def find_class(self, module, name):
        parsed_module = module.split('.')
        if 'autodse' in parsed_module or 'result' in parsed_module:
            if 'src' not in parsed_module:
                parsed_module = ['src'] + parsed_module
        module = '.'.join(parsed_module)
        return super().find_class(module, name)
    
class CPU_Unpickler(pickle5.Unpickler):
    def find_class(self, module, name):
        # print(module, name)
        parsed_module = module.split('.')
        # print(parsed_module)
        if 'src' in parsed_module:
            module = parsed_module[-1]
        # print(module, name)
        if module == 'torch.storage' and name == '_load_from_bytes':
            return lambda b: torch.load(io.BytesIO(b), map_location='cpu')
        else: return super().find_class(module, name)
        
def seed_all(seed: int):
    random.seed(seed)
    torch.manual_seed(seed)
    np.random.seed(seed)
    
def para_run_func(
    func: Callable,
    args_list: List[Tuple]
):
    ctx = mp.get_context('forkserver')
    procs = []
    manager = ctx.Manager()
    res_dict = manager.dict()
    for args in args_list:
        proc = ctx.Process(target=func, args=args+tuple((res_dict,)))
        proc.start()
        procs.append(proc)
    for proc in procs:
        proc.join()
    return res_dict._getvalue()

def para_map(
    func: Callable,
    args_list: List[Tuple],
    K: int,
    verbose: False
):
    ctx = mp.get_context('forkserver')
    with ctx.Pool(K) as pool:
        if verbose:
            return list(tqdm(pool.imap(func, args_list), total=len(args_list)))
        return pool.starmap(func, args_list)