from src.config import FLAGS
from src.train import train_main, inference
from src.dse import ExhaustiveExplorer, GeneticExplorer, SAExplorer
from src.RL import rl_utils, dse_utils, hls
from src.RL.data import PrivateDB
from src.saver import saver
from src.utils import get_root_path, load, get_src_path
from src.parameter import compile_design_space, gen_key_from_design_point
from src.config_ds import build_config
import src.config as config
from typing import Dict, Any

from os.path import join, dirname
from glob import iglob
import os, json, sys, uuid, pickle, random
import torch
import multiprocessing as mp
import concurrent.futures
import time


TARGETS = config.TARGETS
MACHSUITE_KERNEL = config.MACHSUITE_KERNEL
poly_KERNEL = config.poly_KERNEL
simple_KERNEL = config.simple_KERNEL


from src.programl_data import get_data_list, MyOwnDataset
import src.programl_data as programl_data

import warnings
warnings.filterwarnings('ignore')

if not FLAGS.force_regen:
    dataset = MyOwnDataset()
    pragma_dim = load(join(programl_data.SAVE_DIR, 'pragma_dim'))
    print('read dataset')
else:
    if FLAGS.sample_finetune:
        from sample_finetune import sample_data_list
        dataset = sample_data_list()
    else:
        pragma_dim = 0
        dataset, pragma_dim = get_data_list()

if FLAGS.encoder_path is not None:
    _path = join(dirname(FLAGS.encoder_path), 'v18_pragma_dim')
    pragma_dim = load(join(dirname(FLAGS.encoder_path), 'v18_pragma_dim'))
        

def set_model_path(graph_type):
    path = 'logs/auto-encoder/round3-model-comparison/models/**'
    
    model = [f for f in iglob(join(get_src_path(), path), recursive=True) if f.endswith('.pth') and graph_type in f]
    assert len(model) == 1
    FLAGS.model_path = model[0]
    
    encoder = [f for f in iglob(join(get_src_path(), path), recursive=True) if f.endswith('.klepto') and graph_type in f]
    assert len(encoder) == 1
    FLAGS.encoder_path = encoder[0]

    if graph_type == 'initial': FLAGS.num_features, FLAGS.edge_dim, FLAGS.separate_pseudo = 134, 7, False
    elif graph_type == 'extended': FLAGS.num_features, FLAGS.edge_dim, FLAGS.separate_pseudo = 136, 298, True
    elif graph_type == 'hierarchy': FLAGS.num_features, FLAGS.edge_dim, FLAGS.separate_pseudo = 136, 299, True
    
def load_config(config_path: str, logger) -> Dict[str, Any]:
    try:
        if not os.path.exists(config_path):
            print('Config JSON file not found: %s', config_path)
            raise RuntimeError()

        print('Loading configurations')
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
    
def run_Genetic(path, kernel, path_graph, param, first_dse, run_dse, point, pragma_dim, timeout, device):
    GeneticExplorer(
        path, kernel, path_graph, param, first_dse = first_dse, run_dse = run_dse, point = point, pragma_dim = pragma_dim,
        timeout = timeout, device = device
    )
    
def run_SA(path, kernel, path_graph, param, first_dse, run_dse, point, pragma_dim, timeout, device):
    SAExplorer(
        path, kernel, path_graph, param, first_dse = first_dse, run_dse = run_dse, point = point, pragma_dim = pragma_dim,
        timeout=timeout, device = device
    )
    
def run_Exhaustive(path, kernel, path_graph, param, first_dse, run_dse, point, pragma_dim, timeout, device):
    ExhaustiveExplorer(
        path, kernel, path_graph, param, first_dse = first_dse, run_dse = run_dse, point = point, pragma_dim = pragma_dim,
        timeout=timeout, device = device
    )
    
def run_Exhaustive_finetune(path, kernel, path_graph, param, first_dse, run_dse, point, pragma_dim, timeout, device):
    ## Extra parameters ##
    is_special = param['special']
    nRound = 2 if is_special else 10
    hls_batch_size = 15
    hls_timeout = 60
    hls_db_id = 0
    finetune_epoch = param['finetune']
    finetune_lr = 1e-4
    finetune_weight_decay = 1e-4
    ######################
    param['num_top_designs'] = hls_batch_size
    log_path = param['log_path']
    n_freeze_layers = param['n_freeze_layers']
    reg_model = dse_utils.get_model(first_dse, pragma_dim, device, 'regression')
    class_model = dse_utils.get_model(first_dse, pragma_dim, device, 'class')
    reg_model.get_optimizer(finetune_lr, finetune_weight_decay)
    class_model.get_optimizer(finetune_lr, finetune_weight_decay)
    if n_freeze_layers > 0:
        # assert 0, 'testing with not freezing layers'
        reg_model.freeze_layers(n_freeze_layers)
        class_model.freeze_layers(n_freeze_layers)
    G = rl_utils.get_graph(path_graph, kernel)
    db = PrivateDB(None, G, reg_model, class_model)
    uid = str(uuid.uuid4())
    hq = hls.PrivateHQ(hls_batch_size, hls_batch_size, dataset, kernel, uid, db_id = hls_db_id)
    min_real_perf = float('inf')
    best_real_res = None
    reg_model_save_path = None
    class_model_save_path = None
    for t in range(nRound):
        if t != 0:
            param['real_reg_model_path'] = reg_model_save_path
            param['real_class_model_path'] = class_model_save_path
        explorer = ExhaustiveExplorer(
            path, kernel, path_graph, param, first_dse = first_dse, run_dse = run_dse, point = point, pragma_dim = pragma_dim,
            timeout=timeout, device = device
        )
        res_lists = [explorer.result_buffer.copy()]
        if t == 0 and is_special:
            valid_list = []
            invalid_list = []
            for i in range(len(res_lists[0])):
                if res_lists[0][i].valid:
                    valid_list.append(res_lists[0][i])
                else:
                    invalid_list.append(res_lists[0][i])
            valid_num = int(hq.n * 0.75)
            invalid_num = hq.n - valid_num
            res_lists[0] = random.sample(valid_list, valid_num) + random.sample(invalid_list, invalid_num)
        if len(res_lists[0]) == hq.n:
            print('[Warning]: bug')
        new_db_path, best_exist_res = hls.call_hls(res_lists, db, hq, timeout=hls_timeout)
        best_new_res = db.extend(new_db_path)
        if best_exist_res is not None:
            if best_exist_res.perf < min_real_perf:
                min_real_perf = best_exist_res.perf
                best_real_res = best_exist_res
        if best_new_res is not None and best_new_res.perf < min_real_perf:
            min_real_perf = best_new_res.perf
            best_real_res = best_new_res
        _real_res_log_path = log_path.format(f'{kernel}_best_round{t}.pkl')
        if best_real_res != None:
            print('====================')
            print(f'Round {t} (real) best design:')
            print(f'Perf: {best_real_res.perf}, Point: {best_real_res.point}')
            print('====================')
            print('')
            with open(_real_res_log_path, 'wb') as handle:
                obj = dict()
                _key = gen_key_from_design_point(best_real_res.point)
                obj[(best_real_res.perf, _key)] = best_real_res
                pickle.dump(obj, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
        else:
            print('=====================')
            print(f'Round {t} (real) best design:')
            print('None')
            print('=====================')
            print('')
        reg_loader, class_loader = db.get_loader()
        db.dump()
        if t != nRound - 1:
            if reg_loader != None:
                print('Regression model finetuning')
                reg_model.finetune(reg_loader, finetune_epoch)
            if class_loader != None:
                print('Class model finetuning')
                class_model.finetune(class_loader, finetune_epoch)
            os.makedirs(log_path.format(f'gnns'), exist_ok=True)
            reg_model_save_path = log_path.format(f'gnns/round_{t}_reg.pth')
            class_model_save_path = log_path.format(f'gnns/round_{t}_class.pth')
            torch.save(reg_model.model.state_dict(), reg_model_save_path)
            torch.save(class_model.model.state_dict(), class_model_save_path)

if __name__ == '__main__':
    
    #### params ####
    run_other = False
    ################
    
    if FLAGS.subtask == 'dse' and run_other:
        kern_to_ds_size = dict()
        candidates = []
        appeared = set()
        for dataset in ['machsuite', 'poly']:
            path = join(get_root_path(), 'dse_database', dataset, 'config')
            path_graph = join(get_root_path(), 'dse_database', 'programl', dataset, 'processed')
            if dataset == 'machsuite':   
                KERNELS = MACHSUITE_KERNEL
            elif dataset == 'poly':
                KERNELS = poly_KERNEL
            else:
                raise NotImplementedError()
            db_ver = 'v20' if FLAGS.v2_db else 'v18'
            if FLAGS.v21:
                db_ver = 'v21'
            for kernel in KERNELS:
                _db_path = None
                if dataset == 'machsuite':
                    _db_path = f'/home/zijd/dse/software-gnn/dse_database/{dataset}/databases/{db_ver}/original-size/one-db-extended-round{FLAGS.round_num}/{kernel}_result_updated-0.db'
                else:
                    _db_path = f'/home/zijd/dse/software-gnn/dse_database/poly/databases/{db_ver}/one-db/one-db-extended-round{FLAGS.round_num}/{kernel}_result_updated-0.db'
                _config_path = join(path, f'{kernel}_ds_config.json')
                _config = load_config(_config_path, saver)
                ds, ds_size = compile_design_space(
                    _config['design-space']['definition'],
                    None,
                    saver
                )
                kern_to_ds_size[f'{dataset}_{kernel}'] = ds_size
                if os.path.exists(_db_path):
                    appeared.add(f'{dataset}_{kernel}')
        
        for k in sorted(kern_to_ds_size.values(), reverse=True):
            for v in kern_to_ds_size.keys():
                if kern_to_ds_size[v] == k and v not in candidates:
                    candidates.append(v)
                    break
        print('============= Appeared =============')
        for kern in candidates:
            if kern in appeared:
                print(kern, kern_to_ds_size[kern])
        print('====================================')
        print('============= Others =============')
        for kern in candidates:
            if kern not in appeared:
                print(kern, kern_to_ds_size[kern])
        print('====================================')
        
            
    elif FLAGS.subtask == 'inference':
        if type(FLAGS.model_path) is not list:
            inference(dataset)
        else:
            print(FLAGS.model_path)
            for ind, model_path in enumerate(FLAGS.model_path):
                inference(dataset, init_pragma_dict=pragma_dim, model_path=model_path, model_id=ind, test_ratio=FLAGS.val_ratio)
                inference(dataset, init_pragma_dict=pragma_dim, model_path=model_path, model_id=ind, test_ratio=FLAGS.val_ratio, is_val_set=True)
                inference(dataset, init_pragma_dict=pragma_dim, model_path=model_path, model_id=ind, test_ratio=FLAGS.val_ratio, is_train_set=True)
                if ind + 1 < len(FLAGS.model_path):
                    saver.new_sub_saver(subdir=f'run{ind+2}')
                    saver.log_info('\n\n')
    elif FLAGS.subtask == 'dse':
        if FLAGS.dataset == 'programl':
            first_dse = True
            if FLAGS.plot_dse: graph_types = ['initial', 'extended', 'hierarchy']
            else: graph_types = [FLAGS.graph_type]

            cand_devices = FLAGS.cand_devices
            cur_devices_idx = random.randint(0, len(cand_devices)-1)
            
            # get thread/mp ready
            t_pool = concurrent.futures.ThreadPoolExecutor(max_workers = 8)
            threads = []
            mp.set_start_method('spawn', force=True)
            __timeout = 60*60
            version_code = 'v20' if FLAGS.v2_db else 'v18'
            if FLAGS.v2_db and FLAGS.v21:
                version_code = 'v21'
            
            for dataset in ['machsuite', 'poly']:
                path = join(get_root_path(), 'dse_database', dataset, 'config')
                path_graph = join(get_root_path(), 'dse_database', 'programl', dataset, 'processed')
                if dataset == 'machsuite':
                    KERNELS=["gemm-blocked","gemm-ncubed","md","nw","spmv-ellpack","stencil-3d","stencil"]
                elif dataset == 'poly':
                    KERNELS=["3mm", "adi", "atax-medium", "correlation"]
                    KERNELS+=["bicg-large", "bicg-medium", "bicg", "correlation", "covariance", "doitgen-red", "trmm-opt"]
                    KERNELS+=["doitgen","fdtd-2d-large","fdtd-2d","gemm-p-large","gemm-p","gemver-medium"]
                    KERNELS+=["gemver","gesummv-medium","gesummv","heat-3d","jacobi-1d","jacobi-2d","syrk"]
                    KERNELS+=["mvt", "mvt-medium", "seidel-2d", "symm-opt-medium", "symm-opt", "symm", "syr2k"]
                else:
                    raise NotImplementedError()
                point = {'__PARA__L0': 2, '__PARA__L1': 1, '__PARA__L2': 1, '__PARA__L3': 8, '__PARA__L4': 32, '__PARA__L5': 1, '__PARA__L6': 16, '__PIPE__L0': 'off', '__PIPE__L1': 'flatten', '__PIPE__L3': '', '__TILE__L0': 1, '__TILE__L1': 1, '__TILE__L3': 1}
                for kernel in KERNELS:
                    if not FLAGS.all_kernels and not FLAGS.target_kernel in kernel:
                        continue
                    plot_data = {}
                    for graph_type in graph_types:
                        saver.info('*****************************************************************')
                        saver.info(f'Now processing {graph_type}')
                        if FLAGS.plot_dse:
                            set_model_path(graph_type)
                        saver.info('#################################################################')
                        saver.info(f'Starting DSE for {kernel}')
                        saver.debug(f'Starting DSE for {kernel}')
                        FLAGS.target_kernel = kernel
                        if FLAGS.explorer == 'exhaustive':
                            param = dict()
                            param['log_path'] = f'/home/zijd/dse/software-gnn/logs/Exh/Hier_{version_code}_t({__timeout})/{dataset}_{kernel}' + '/{}'
                            param['real_reg_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/regression_val_42kernel_11k_95percent_v20pretrained_2lp-2lm.pth'
                            param['real_class_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/class_val_42kernel_45k_95percent_scratch_2lp-2lm.pth'
                            threads.append(mp.Process(
                                target=run_Exhaustive,
                                args=[
                                    path, kernel, path_graph, param, first_dse, True, point, pragma_dim, __timeout, cand_devices[cur_devices_idx]
                                ]
                            ))
                            cur_devices_idx += 1
                            cur_devices_idx %= len(cand_devices)
                        elif FLAGS.explorer == 'genetic':
                            param = dict()
                            param['log_path'] = f'/home/zijd/dse/software-gnn/logs/Gen/Hier_{version_code}_t({__timeout})_pSize(50)_pRate(0.4)_muP(0.2)/{dataset}_{kernel}' + '/{}'
                            # param['real_reg_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/regression_val_42kernel_11k_95percent_v20pretrained_2lp-2lm.pth'
                            # param['real_class_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/class_val_42kernel_45k_95percent_scratch_2lp-2lm.pth'
                            threads.append(mp.Process(
                                target=run_Genetic,
                                args=[
                                    path, kernel, path_graph, param, first_dse, True, point, pragma_dim, 
                                    __timeout, cand_devices[cur_devices_idx]
                                ]
                            ))
                            cur_devices_idx += 1
                            cur_devices_idx %= len(cand_devices)
                        elif FLAGS.explorer == 'annealing':
                            param = dict()
                            # param['real_reg_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/regression_val_42kernel_11k_95percent_v20pretrained_2lp-2lm.pth'
                            # param['real_class_model_path'] = '/home/zijd/dse/software-gnn/models/v21_models/class_val_42kernel_45k_95percent_scratch_2lp-2lm.pth'
                            param['log_path'] = f'/home/zijd/dse/software-gnn/logs/SA/Hier_{version_code}_t({__timeout})_stT({FLAGS.init_temp})_edT(0.1)/{dataset}_{kernel}' + '/{}'
                            threads.append(mp.Process(
                                target=run_SA,
                                args=[
                                    path, kernel, path_graph, param, first_dse, True, point, pragma_dim, __timeout, cand_devices[cur_devices_idx]
                                ]
                            ))
                            cur_devices_idx += 1
                            cur_devices_idx %= len(cand_devices)
                        else:
                            raise NotImplementedError()
                        saver.info('#################################################################')
                        saver.info(f'')
                        first_dse = False
            t_pool.shutdown(wait=True)
            for idx, t in enumerate(threads):
                t.start()
                print(f'=========== Process {idx} started =============')
                time.sleep(1)
            time.sleep(2)
            for t in threads:
                assert t.is_alive()
            for t in threads:
                t.join()
            
        elif FLAGS.dataset == 'simple-programl':
            first_dse = True
            path = join(get_root_path(), 'dse_database', 'simple-program', 'config')
            path_graph = join(get_root_path(), 'dse_database', 'simple-program', 'programl', 'processed', 'initial')   
            PRECISION = ['int', 'long', 'float', 'double']
            SIZE = [64, 128, 256, 512, 1024, 2048]
            for name in simple_KERNEL: 
                for precision in PRECISION:
                    for size in SIZE:
                        if 'unrolled' in name and size <= 128: # and (size <= 512):
                            continue
                        config_path = join(path, name)
                        kernel = f'{name}-{precision}-{size}'
                        saver.info('#################################################################')
                        saver.info(f'Starting DSE for {kernel}')
                        saver.debug(f'Starting DSE for {kernel}')
                        FLAGS.target_kernel = kernel
                        if FLAGS.explorer == 'exhaustive':
                            explorer = ExhaustiveExplorer(config_path, kernel, path_graph, first_dse = first_dse, run_dse = True, point = None, pragma_dim = pragma_dim)
                        first_dse = False
        else:
            raise NotImplementedError()
    else:
        test_ratio, resample_list = FLAGS.val_ratio, [-1]
        if FLAGS.resample:
            test_ratio, resample_list = 0.25, range(4)
        for ind, r in enumerate(resample_list):
            saver.info(f'Starting training with resample {r}')
            test_data = train_main(dataset, pragma_dim, test_ratio=test_ratio, resample=r)
            if ind + 1 < len(resample_list):
                saver.new_sub_saver(subdir=f'run{ind+2}')
                saver.log_info('\n\n')

    saver.close()
