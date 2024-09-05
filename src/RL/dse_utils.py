# dse_utils works below dse.py

from src.parameter import DesignPoint, compile_design_space, DesignSpace
from src.programl_data import create_edge_index
from src.dse import GNNModel, SAVE_DIR
from src.utils import get_root_path
from src.saver import saver
from src.config import FLAGS
from src.config_ds import build_config
from src.RL.rl_utils import RoundAboutPickler
import src.RL.rl_utils as rl_utils

from tqdm import tqdm
from typing import List
from torch_geometric.data import Data, DataLoader
from glob import iglob
from typing import Any, Dict, List, Tuple, Union
import numpy as np
import networkx as nx
import pickle, pickle5, io, math, time, dataclasses, torch, redis

# useful subroutines in process oriented style

def get_pragmas(point: DesignPoint) -> List[int]:
    pragmas = []
    for _, value in sorted(point.items()):
        if type(value) is str:
            if value.lower() == 'flatten':
                value = 100 # 2
            elif value.lower() == 'off':
                value = 1
            elif value.lower() == '':
                value = 50 # 3
            else:
                raise ValueError()
        elif type(value) is int:
            pass
        else:
            raise ValueError()
        pragmas.append(value)
    return pragmas

def geo_data(mode: str, d_node: Dict[str, Any], point: DesignPoint, X: torch.FloatTensor, edge_index: torch.Tensor, edge_attr: Any, no_point: bool = False, kernel: Tuple[str] = None):
    if 'regression' in mode:
        data = Data(
            X_contextnids=d_node['X_contextnids'],
            X_pragmanids=d_node['X_pragmanids'],                    
            X_pragmascopenids=d_node['X_pragmascopenids'],
            X_pseudonids=d_node['X_pseudonids'],    
            X_icmpnids=d_node['X_icmpnids'],    
            X_pragma_per_node=d_node['X_pragma_per_node'],                   
            x=X,
            dataset = None if kernel is None else kernel[0],
            kernel = None if kernel is None else kernel[1],
            edge_index=edge_index,
            pragmas=d_node['pragmas'],
            perf=d_node['perf'],
            actual_perf=d_node['actual_perf'],
            quality=d_node['quality'],
            util_BRAM=d_node['util-BRAM'],
            util_DSP=d_node['util-DSP'],
            util_LUT=d_node['util-LUT'],
            util_FF=d_node['util-FF'],
            total_BRAM=d_node['total-BRAM'],
            total_DSP=d_node['total-DSP'],
            total_LUT=d_node['total-LUT'],
            total_FF=d_node['total-FF'],
            point=point,
            edge_attr=edge_attr
        )
        if no_point:
            delattr(data, 'point')
        return data
    elif 'class' in mode:
        data = None
        if no_point:
            data = Data(
                x=X,
                edge_index=edge_index,
                pragmas=d_node['pragmas'],
                perf=d_node['perf'],
                edge_attr = edge_attr,
                dataset = None if kernel is None else kernel[0],
                kernel = None if kernel is None else kernel[1],
                X_contextnids=d_node['X_contextnids'],
                X_pragmanids=d_node['X_pragmanids'],                    
                X_pragmascopenids=d_node['X_pragmascopenids'],                    
                X_pseudonids=d_node['X_pseudonids'],    
                X_icmpnids=d_node['X_icmpnids'],    
                X_pragma_per_node=d_node['X_pragma_per_node']
            )
        else:
            data = Data(
                x=X,
                edge_index=edge_index,
                pragmas=d_node['pragmas'],
                perf=d_node['perf'],
                point = point,
                edge_attr = edge_attr,
                dataset = None if kernel is None else kernel[0],
                kernel = None if kernel is None else kernel[1],
                X_contextnids=d_node['X_contextnids'],
                X_pragmanids=d_node['X_pragmanids'],                    
                X_pragmascopenids=d_node['X_pragmascopenids'],                    
                X_pseudonids=d_node['X_pseudonids'],    
                X_icmpnids=d_node['X_icmpnids'],    
                X_pragma_per_node=d_node['X_pragma_per_node']
            )
        return data
    else:
        raise NotImplementedError()
        
    
def apply_design_point(
    g: nx.Graph, point: DesignPoint, mode: str, model: GNNModel, 
    max_pragma_length: int = 21, kernel: Tuple[str] = None, no_point: bool = False,
    force_keep_pragma_attribute=False, redundant=True
) -> Data:
    X, d_node = model.encode_node(g, point, force_keep_pragma_attribute)
    edge_attr = model.encode_edge(g)
    edge_index = model.create_edge_index(g)
    pragmas = get_pragmas(point)
    if max_pragma_length is not None:
        pragmas.extend([0] * (max_pragma_length - len(pragmas)))

    resources = ['BRAM', 'DSP', 'LUT', 'FF']
    keys = ['perf', 'actual_perf', 'quality']
    d_node['pragmas'] = torch.FloatTensor(np.array([pragmas]))
    for r in resources:
        keys.append('util-' + r)
        keys.append('total-' + r)
    for key in keys:
        d_node[key] = 0
    if mode == 'class':
        d_node['perf'] = 1
    return geo_data(mode, d_node, point, X, edge_index, edge_attr, kernel = kernel, no_point = no_point)

def get_model(first_dse: bool, pragma_dim, device, task, load_parameter=True) -> GNNModel:
    if FLAGS.ensemble > 1:
        raise NotImplementedError()
    if task == 'regression':
        return GNNModel(
            SAVE_DIR, saver, first_dse=first_dse, multi_target=True, task=task,
            num_layers=FLAGS.num_layers, D=FLAGS.D, pragma_dim=pragma_dim, device=device,
            load_parameter=load_parameter
        )
    elif task == 'class':
        return GNNModel(
            SAVE_DIR, saver, multi_target=False, task=task,
            num_layers=FLAGS.num_layers, D=FLAGS.D, pragma_dim=pragma_dim, device=device,
            load_parameter=load_parameter
        )
        
kern_pragma_scope = {
    'fdtd-2d-large': {
        15: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        18: ['__PARA__L1'],
        27: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        30: ['__PARA__L5'],
        40: ['__PIPE__L3', '__TILE__L3', '__PARA__L3'],
        43: ['__PARA__L6'],
        53: ['__PIPE__L4', '__TILE__L4', '__PARA__L4'],
        56: ['__PARA__L7']
    },
    'gemver-medium': {
        13: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        16: ['__PARA__L4'],
        26: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        29: ['__PARA__L5'],
        35: ['__PARA__L2'],
        44: ['__PIPE__L3', '__TILE__L3', '__PARA__L3'],
        47: ['__PARA__L6']
    },
    '3mm': {
        17: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        24: ['__PIPE__L3', '__TILE__L3', '__PARA__L3'],
        28: ['__PARA__L6'],
        40: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        47: ['__PIPE__L4', '__TILE__L4', '__PARA__L4'],
        51: ['__PARA__L7'],
        63: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        70: ['__PIPE__L5', '__TILE__L5', '__PARA__L5'],
        74: ['__PARA__L8']
    },
    'trmm-opt': {
        19: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        26: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        29: ['__PARA__L2']
    },
    'atax-medium': {
        16: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        20: ['__PARA__L1'],
        25: ['__PARA__L2']
    },
    'atax': {
        17: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        21: ['__PARA__L0_0'],
        26: ['__PARA__L0_1']
    },
    'symm-opt': {
        23: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        30: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        34: ['__PARA__L2'],
        42: ['__PARA__L3']
    },
    'covariance': {
        16: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        20: ['__PARA__L3'],
        31: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        34: ['__PARA__L4'],
        44: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        47: ['__PIPE__L5'],
        51: ['__PARA__L6']
    },
    'correlation': {
        16: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        20: ['__PARA__L4'],
        31: ['__PIPE__L1', '__TILE__L1', '__PARA__L1'],
        35: ['__PARA__L5'],
        52: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        55: ['__PARA__L6'],
        67: ['__PIPE__L3', '__TILE__L3', '__PARA__L3'],
        71: ['__PIPE__L7'],
        75: ['__PARA__L7_0']
    },
    'syr2k': {
        21: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        24: ['__PARA__L1'],
        35: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        38: ['__PARA__L3']
    },
    'syrk': {
        21: ['__PIPE__L0', '__TILE__L0', '__PARA__L0'],
        24: ['__PARA__L1'],
        35: ['__PIPE__L2', '__TILE__L2', '__PARA__L2'],
        38: ['__PARA__L3']
    }
}

def aug_dt(dt: Union[DesignPoint, Data], ds: DesignSpace, acs):
    ret = []
    
    pass

def trunc_dt(dt: Union[DesignPoint, Data], ds: DesignSpace, acs):
    point = dict(dt.point) if isinstance(dt, Data) else dict(dt)
    for k, v in point.items():
        if 'PIPE' in k and v == '':
            mark = True
            for c in ds[k].child:
                if 'PARA' in c:
                    idx = acs.pids_to_idx[c]
                    if point[c] != acs.full_action_map[idx][-1]: 
                        mark = False; break
                if 'PIPE' in c:
                    if point[c] != 'off':
                        mark = False; break
            if mark:
                point[k] = 'flatten'
                for c in ds[k].child:
                    if 'PARA' in c:
                        idx = acs.pids_to_idx[c]
                        point[c] = acs.full_action_map[idx][0]

        if 'TILE' in k:
            idx = acs.pids_to_idx[k]
            if v == acs.full_action_map[idx][-1]:
                point[k] = acs.full_action_map[idx][0]
    return point
        
    
def get_datalist(
    db_path: str, g: nx.Graph, mode: str, model: GNNModel, return_key: bool = False, uniform_pragma = False, max_pragma_length = None, no_point=False,
    kern = None
):
    if FLAGS.separate_T and FLAGS.pragma_uniform_encoder:
        raise NotImplementedError()
        pragmas.extend([0] * (max_pragma_length - len(pragmas)))
    database = redis.StrictRedis(host='localhost', port=FLAGS.port, db=14)
    database.flushdb()
    res_list = []
    used_keys = []
    model.clear_cache()
    with open(db_path, 'rb') as handle:
        try:
            new_data = pickle.load(handle)
        except:
            new_data = pickle5.load(handle)
        database.hmset(0, new_data)
        keys = [k.decode('utf-8') for k in database.hkeys(0)]
        min_perf = float('inf')
        chosen = None
        for key in sorted(keys):
            pickle_obj = database.hget(0, key)
            if pickle_obj is None:
                continue
            obj = RoundAboutPickler(io.BytesIO(pickle_obj)).load()
            if type(obj) is int or type(obj) is dict:
                continue
            assert obj.point != {}
            if mode == 'regression' and key[0:3] == 'lv1':
                continue
            if mode == 'regression' and not FLAGS.invalid and obj.perf < FLAGS.min_allowed_latency:
                continue
            if mode == 'regression':
                assert obj.perf != 0
                if obj.perf < min_perf and obj.valid:
                    min_perf = obj.perf
                    chosen = obj
            res_list.append(obj)
            used_keys.append(key)
        if mode == 'regression':
            print('Min:', min_perf)
            if chosen is not None and min_perf != float('inf'):
                print(chosen.point)
                print(chosen.res_util)
    print(f'Loading {len(res_list)} points from {db_path}')
    data_list = []
    cnt_valid = 0
    if 'class' in mode and kern is not None:
        for idx, res in enumerate(res_list):
            key = used_keys[idx]
            if 'lv1' in key:
                lv2_key = key.replace('lv1', 'lv2')
                if lv2_key in used_keys:
                    cnt_valid += 1
            else:
                if res.perf >= FLAGS.min_allowed_latency: cnt_valid += 1
        # for idx, res in enumerate(res_list):
            # if str(res.ret_code) == 'RetCode.PASS':
            #     print(type(res))
            #     print(res.ordered_paths)
            # pass
        # for idx, res in enumerate(res_list):
        #     if str(res.ret_code) != 'RetCode.EARLY_REJECT':
        #         continue
        #     point = dict(res.point)
        #     mark = False
        #     for crit in res.criticals:
        #         if 'pipelining' in crit:
        #             pos1 = crit.find('(')
        #             pos2 = crit.find(')')
        #             assert pos1 != -1; assert pos2 != -1
        #             pos = crit.find(':', pos1, pos2)+1
        #             ed = pos
        #             while crit[ed].isdigit(): ed += 1
        #             line = int(crit[pos:ed])
        #             for pid in kern_pragma_scope[kern][line]:
        #                 if 'PIPE' in pid:
        #                     point[pid] = 'off'
        #             mark = True
        #         elif 'parallelization' in crit:
        #             pos1 = crit.find('(')
        #             pos2 = crit.find(')')
        #             assert pos1 != -1; assert pos2 != -1
        #             pos = crit.find(':', pos1, pos2)+1
        #             ed = pos
        #             while crit[ed].isdigit(): ed += 1
        #             line = int(crit[pos:ed])
        #             for pid in kern_pragma_scope[kern][line]:
        #                 if 'PARA' in pid:
        #                     point[pid] = 1
        #             mark = True
        #     if not mark: continue
        #     # print(res.criticals)
        #     # print(f'extend {point}')
        #     # print(f'from   {res.point}')
        #     # print('')
        #     mark = False
        #     for k, v in point.items():
        #         if res.point[k] != v:
        #             mark = True; break
        #     if not mark: continue
        #     X, d_node = model.encode_node(g, point)
        #     edge_attr = model.encode_edge(g)
        #     edge_index = create_edge_index(g, model.device)
        #     pragmas = get_pragmas(point)
        #     if uniform_pragma:
        #         pragmas.extend([0] * (max_pragma_length - len(pragmas)))
        #     resources = ['BRAM', 'DSP', 'LUT', 'FF']
        #     targets = ['perf', 'actual_perf', 'quality']
        #     d_node['pragmas'] = torch.FloatTensor(np.array([pragmas])).half()
        #     for r in resources:
        #         targets.append('util-' + r)
        #         targets.append('total-' + r)
        #     for t in targets:
        #         d_node[t] = 0
        #     d_node['perf'] = torch.FloatTensor(np.array([1.])).type(torch.LongTensor)
        #     data_list.append(geo_data(mode, d_node, point, X, edge_index, edge_attr, no_point))
    for idx, res in enumerate(res_list):
        point = res.point
        X, d_node = model.encode_node(g, point)
        edge_attr = model.encode_edge(g)
        edge_index = model.create_edge_index(g)
        pragmas = get_pragmas(point)
        if uniform_pragma:
            pragmas.extend([0] * (max_pragma_length - len(pragmas)))
        resources = ['BRAM', 'DSP', 'LUT', 'FF']
        targets = ['perf', 'actual_perf', 'quality']
        d_node['pragmas'] = torch.FloatTensor(np.array([pragmas])).half()
        for r in resources:
            targets.append('util-' + r)
            targets.append('total-' + r)
        if 'regression' in mode:
            for t in targets:
                y = None
                if t == 'perf':
                    if FLAGS.norm_method == 'speedup-log2':
                        y = math.log2(FLAGS.normalizer/res.perf) / 2
                    else:
                        raise NotImplementedError()
                elif t == 'quality':
                    y = 0
                elif t == 'actual_perf':
                    y = res.perf
                elif 'util' in t or 'total' in t:
                    y = res.res_util[t] * FLAGS.util_normalizer
                else:
                    raise NotImplementedError()
                if t != 'actual_perf' and t != 'quality' and (not 'total' in t):
                    d_node[t] = torch.FloatTensor(np.array([y])).half()
                else:
                    d_node[t] = torch.FloatTensor(np.array([y]))
        elif 'class' in mode:
            key = used_keys[idx]
            if 'lv1' in key:
                lv2_key = key.replace('lv1', 'lv2')
                if lv2_key in used_keys:
                    continue
                else:
                    y = 0
            else:
                y = 0 if res.perf < FLAGS.min_allowed_latency else 1
            for t in targets:
                d_node[t] = 0
            d_node['perf'] = torch.FloatTensor(np.array([y])).type(torch.LongTensor)
        else:
            raise NotImplementedError()
        kernels = None
        if kern is not None:
            kernels = [None, kern]
        data_list.append(geo_data(mode, d_node, point, X, edge_index, edge_attr, no_point, kernel=kernels))
    if return_key:
        _ret_dict = dict()
        for i in range(len(res_list)):
            _ret_dict[rl_utils.point_to_str(res_list[i].point)] = res_list[i]
        return data_list, _ret_dict
    return data_list

def get_db_path_default(db_dir: str, dataset: str, kernel_name: str):
    db_paths = [f for f in iglob(db_dir, recursive=True) if f.endswith('.db') and f'{dataset}' in f and f'{kernel_name}_' in f]
    ori_db_path = None
    if len(db_paths) != 0:
        assert len(db_paths) == 1
        ori_db_path = db_paths[0]
    return ori_db_path

def get_default_dse_infos(dataset: str, kernel: str):
    version_code = 'v20' if FLAGS.v2_db else 'v18'
    db_dir = f'{get_root_path()}/dse_database/**/databases/{version_code}/one-db/one-db-extended-round{FLAGS.round_num}/**'
    db_path = get_db_path_default(db_dir, dataset, kernel)
    config_path = rl_utils.get_config_path(dataset, kernel)
    config = rl_utils.load_config(config_path, saver, silent=True)
    ds, _ = compile_design_space(
        config['design-space']['definition'], None, saver, do_count=False, silent=True
    )
    graph_path = rl_utils.get_graph_path(dataset)
    G = rl_utils.get_graph(graph_path, kernel)
    reg_model = get_model(True, rl_utils.get_pragma_dim(), FLAGS.device, 'regression')
    class_model = get_model(False, rl_utils.get_pragma_dim(), FLAGS.device, 'class')
    return config, ds, G, reg_model, class_model, db_path

@dataclasses.dataclass
class dse_params:
    hls_timeout = 60
    hls_batch_size = 15
    model_freeze_layers = 0
    finetune_epoch = 30
    redis_db_id = 7
    model_lr = 1e-4
    model_weight_decay = 1e-4
    rl_timeout = 60*60

def get_default_dse_params():
    return dse_params()
    
if __name__ == '__main__':
    import warnings
    warnings.filterwarnings('ignore')
    
    dataset = 'poly'
    kernel = 'gemver'
    mode = 'regression'
    device = FLAGS.device
    lr = 1e-4
    weight_decay = 1e-4
    
    pragma_dim = rl_utils.get_pragma_dim()
    model = get_model(False, pragma_dim, device, mode)
    graph_path = rl_utils.get_graph_path(dataset)
    G = rl_utils.get_graph(graph_path, kernel)
    db_path = f'/home/zijd/dse/software-gnn/dse_database/poly/databases/v18/one-db/one-db-extended-round13/{kernel}_result_updated-0.db'
    _tic = time.time()
    data_list = get_datalist(db_path, G, mode, model)
    print('Load elapsed:', round(time.time()-_tic, 2))
    print(len(data_list))
    data_loader = DataLoader(data_list, batch_size=FLAGS.batch_size, shuffle=True)
    model.get_optimizer(lr, weight_decay)
    model.finetune(data_loader, 30)
    # db_path = '/home/zijd/dse/software-gnn/tmp/test/3mm_result_updated-this-round-0.db'
    # data_list = data_list + get_datalist(db_path, G, mode, model)
    # print(len(data_list))
    # data_loader = DataLoader(data_list, batch_size=FLAGS.batch_size, shuffle=True)
    # model.finetune(data_loader, 30)