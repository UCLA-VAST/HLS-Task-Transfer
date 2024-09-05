from tqdm.rich import tqdm
from torch_geometric.data import Data
import torch, os, pickle, argparse, json, re
import numpy as np
from src.programl_data import _in_between, find_pragma_node
from src.RL import rl_utils, dse_utils
from src.RL.rl_utils import RoundAboutPickler
from src.parameter import gen_key_from_design_point
from src.config import FLAGS
from src.programl_data import MyOwnDataset
from src.config import FLAGS, parser

import redis, pickle5, io
import networkx as nx
import warnings
warnings.filterwarnings('ignore')

def cal_ds_size(kernels, reg_dataset, class_dataset):
    cnt_per_kern = dict()
    for dt in class_dataset:
        kern = dt.kernel.replace('_processed_result', '')
        if kern in kernels:
            if kern not in cnt_per_kern:
                cnt_per_kern[kern] = 1
            else: cnt_per_kern[kern] += 1
    print(cnt_per_kern)
    _sum = 0
    for v in cnt_per_kern.values():
        _sum += v
    print('Total Class:', _sum)
    cnt_per_kern = dict()
    for dt in reg_dataset:
        kern = dt.kernel.replace('_processed_result', '')
        if kern in kernels:
            if kern not in cnt_per_kern:
                cnt_per_kern[kern] = 1
            else: cnt_per_kern[kern] += 1
    print(cnt_per_kern)
    _sum = 0
    for v in cnt_per_kern.values():
        _sum += v
    print('Total Reg:', _sum)
    
def cal_kern_best(reg_dataset):
    kern_best = dict()
    targets = ['util_DSP', 'util_BRAM', 'util_LUT', 'util_FF']
    for dt in reg_dataset:
        mark = True
        for t in targets:
            if eval(f'dt.{t}') > 0.8:
                mark = False
                break
        if mark:
            if dt.kernel not in kern_best:
                kern_best[dt.kernel] = float(dt.actual_perf)
            else:
                kern_best[dt.kernel] = min(kern_best[dt.kernel], float(dt.actual_perf))
    print(kern_best)

def gen_dataset(
    dataset, kernels, save_path, db_prefix, db_suffix,
    reg_model, class_model, max_pragma_length
):
    if db_prefix == None:
        version_code = 'v20' if FLAGS.v2_db else 'v18'
        version_code = 'v21' if FLAGS.v21 else version_code
        db_prefixs = {
            'machsuite': f'/home/zijd/dse/software-gnn/dse_database/machsuite/databases/{version_code}/original-size/one-db-extended-round{FLAGS.round_num}'+'/{}',
            'poly': f'/home/zijd/dse/software-gnn/dse_database/poly/databases/{version_code}/one-db/one-db-extended-round{FLAGS.round_num}'+'/{}'
        }
    else:
        db_prefixs = None
    fix_dataset = dataset
    kern_to_G = dict()
    for kern in kernels:
        if fix_dataset is not None: dataset = fix_dataset
        else:
            dataset = 'machsuite' if kern in ['stencil', 'stencil-3d', 'gemm-blocked', 'gemm-ncubed', 'nw', 'md', 'spmv-ellpack'] else 'poly'
            dataset = 'new_db' if kern in ['3d-rendering', 'att-3mm-fuse', 'att-3mm', 'knn', 'spam-filter', 'vmmv'] else dataset
        graph_path = rl_utils.get_graph_path(dataset)
        G = rl_utils.get_graph(graph_path, kern)
        G = nx.convert_node_labels_to_integers(G)
        vis_edge = set()
        es = list(G.edges)
        cnt_remove = 0
        for idx, e in enumerate(es):
            if len(e) == 3:
                if e[0:2] in vis_edge:
                    # print(f'Remove {e[0]}, {e[1]}, {e[2]}')
                    print(idx)
                    G.remove_edge(e[0], e[1])
                    cnt_remove += 1
                else:
                    vis_edge.add(e[0:2])
        if cnt_remove > 0:
            print(f'[WARNING] remove {cnt_remove} edge')
        kern_to_G[kern] = G
    all_reg_list = []
    all_class_list = []
    for k in kernels:
        if fix_dataset is not None: dataset = fix_dataset
        else:
            dataset = 'machsuite' if k in ['stencil', 'stencil-3d', 'gemm-blocked', 'gemm-ncubed', 'spmv-ellpack', 'nw', 'md'] else 'poly'
            dataset = 'new_db' if k in ['3d-rendering', 'att-3mm-fuse', 'att-3mm', 'knn', 'spam-filter', 'vmmv'] else dataset
        if db_prefixs is not None:
            db_prefix = db_prefixs[dataset]
        kern = k + '_processed_result'
        if not os.path.exists(db_prefix.format(f'{k}{db_suffix}.db')):
            continue
        reg_list = dse_utils.get_datalist(
            db_prefix.format(f'{k}{db_suffix}.db'), 
            kern_to_G[k],
            'regression',
            reg_model,
            False,
            True,
            max_pragma_length,
            False,
            k
        )
        class_list = dse_utils.get_datalist(
            db_prefix.format(f'{k}{db_suffix}.db'), 
            kern_to_G[k],
            'class',
            class_model,
            False,
            True,
            max_pragma_length,
            False,
            k
        )
        for _ll in [reg_list, class_list]:
            for idx, dt in enumerate(_ll):
                a = dt.to_dict()
                a['kernel'] = kern
                a['key'] = gen_key_from_design_point(a['point'])
                a.pop('point')
                _ll[idx] = Data.from_dict(a).to('cpu')
        all_reg_list += reg_list; all_class_list += class_list
    os.makedirs(save_path.format(f'reg'))
    os.makedirs(save_path.format(f'class'))
    print('')
    print(f'N Reg: {len(all_reg_list)}, N class: {len(all_class_list)}', flush=True)
    for _ll, _name in zip([all_reg_list, all_class_list], ['reg', 'class']):
        cur_path = save_path.format(f'{_name}') + '/{}'
        for idx, dt in enumerate(tqdm(_ll)):
            torch.save(dt, cur_path.format(f'data_{idx}.pt'))

    cnt_per_kern = dict()
    for dt in all_class_list:
        kern = dt.kernel.replace('_processed_result', '')
        if kern in kernels:
            if kern not in cnt_per_kern:
                cnt_per_kern[kern] = 1
            else: cnt_per_kern[kern] += 1
    print(cnt_per_kern)
    _sum = 0
    for v in cnt_per_kern.values():
        _sum += v
    print(_sum)
    cnt_per_kern = dict()
    for dt in all_reg_list:
        kern = dt.kernel.replace('_processed_result', '')
        if kern in kernels:
            if kern not in cnt_per_kern:
                cnt_per_kern[kern] = 1
            else: cnt_per_kern[kern] += 1
    print(cnt_per_kern)
    _sum = 0
    for v in cnt_per_kern.values():
        _sum += v
    print(_sum)
    

def get_min(db_path: str, mode='regression'):
    database = redis.StrictRedis(host='localhost', port=FLAGS.port, db=14)
    database.flushdb()
    res_list = []
    used_keys = []
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
    print(min_perf)
    print(chosen.point)
    
def kth_best(db_path: str, dataset: str, kernel: str):
    from src.saver import saver
    from src.parameter import compile_design_space, topo_sort_param_ids
    from src.algo.sampling import DsHelper
    from src.RL.zoo import RLZoo
    config_path = rl_utils.get_config_path(dataset, kernel)
    print(config_path)
    config = rl_utils.load_config(config_path, saver)
    ds, _ = compile_design_space(
        config['design-space']['definition'],
        None,
        saver,
        do_count=False
    )
    graph_path = rl_utils.get_graph_path(dataset)
    G = rl_utils.get_graph(graph_path, kernel)
    ordered_pids = topo_sort_param_ids(ds)
    ds_helper = DsHelper(ds, ordered_pids)
    reg_model = dse_utils.get_model(True, rl_utils.get_pragma_dim, FLAGS.cand_devices[0], 'regression')
    data_list = dse_utils.get_datalist(db_path, G, 'regression', reg_model)
    for i in [int(75000), int(1e5), int(1e6), int(1e7), int(1e8), int(1e9), int(1e10), int(1e11), int(1e12)]:
        last = ds_helper.get_kth(i)
        best_perf = float('inf'); cnt = 0
        # print(f'Kth: {last}')
        for _data in data_list:
            if not rl_utils.verify_point(ds, _data.point):
                continue
            if ds_helper.le(_data.point, last):
                cnt += 1
                if RLZoo.is_valid(_data):
                    best_perf = min(best_perf, _data.actual_perf)
            # else:
            #     print(_data.point, RLZoo.is_valid(_data), _data.actual_perf)
        cnt_best = 0
        for _data in data_list:
            if not rl_utils.verify_point(ds, _data.point):
                continue
            if RLZoo.is_valid(_data) and _data.actual_perf == best_perf:
                cnt_best += 1
        print(f'le {i}, Best performance: {best_perf}, portion: {cnt/len(data_list)}')
        print(f'Have {cnt_best} top')

if __name__ == '__main__':
    parser.add_argument('--load_block', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--gen_ds', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--get_min', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--kth_best', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--save_path', type=str, default=None)
    FLAGS = parser.parse_known_args()[0]
    other_options = ['load_block', 'gen_ds', 'get_min', 'kth_best']
    mark = False
    for opt in other_options:
        mark |= eval(f'FLAGS.{opt}')
    if not mark:
        parser.add_argument('--ds_name', type=str, default=None)
        parser.add_argument('--gen_kernels', nargs='+', required=False)
        FLAGS = parser.parse_args()
        kerns = FLAGS.gen_kernels
        ds_name = FLAGS.ds_name
        ds_path = f'/home/zijd/dse/software-gnn/tmp/cem/{ds_name}' + '/{}'
        save_path = '/home/zijd/scratch/dse/cem/{}'
        baseline_models = dict({
            'reg': dse_utils.get_model(True, rl_utils.get_pragma_dim(), FLAGS.device, 'regression'),
            'cls': dse_utils.get_model(False, rl_utils.get_pragma_dim(), FLAGS.device, 'class')
        })
        from src.config import poly_KERNEL, MACHSUITE_KERNEL
        kerns = [k for k in MACHSUITE_KERNEL if k not in ['aes', 'spmv-crs']]
        kerns += poly_KERNEL
        kern_to_G = dict()
        for kern in kerns:
            dataset = 'machsuite' if kern in ['stencil', 'stencil-3d', 'gemm-blocked', 'gemm-ncubed', 'spmv-ellpack', 'nw', 'md'] else 'poly'
            dataset = 'new_db' if kern in ['3d-rendering', 'att-3mm-fuse', 'att-3mm', 'knn', 'spam-filter', 'vmmv'] else dataset
            graph_path = rl_utils.get_graph_path(dataset)
            kern_to_G[kern] = rl_utils.get_graph(graph_path, kern)
        all_reg_list = []
        all_class_list = []
        for i in range(1, 9):
            for k in kerns:
                kern = k + '_processed_result'
                if not os.path.exists(ds_path.format(f'{k}/{i}/{k}_result_updated-this-round-0.db')):
                    continue
                reg_list = dse_utils.get_datalist(
                    ds_path.format(f'{k}/{i}/{k}_result_updated-this-round-0.db'), 
                    kern_to_G[k],
                    'regression',
                    baseline_models['reg'],
                    False,
                    True,
                    21,
                    False
                )
                class_list = dse_utils.get_datalist(
                    ds_path.format(f'{k}/{i}/{k}_result_updated-this-round-0.db'), 
                    kern_to_G[k],
                    'class',
                    baseline_models['cls'],
                    False,
                    True,
                    21,
                    False
                )
                for _ll in [reg_list, class_list]:
                    for idx, dt in enumerate(_ll):
                        a = dt.to_dict()
                        a['kernel'] = kern
                        a['key'] = gen_key_from_design_point(a['point'])
                        a.pop('point')
                        _ll[idx] = Data.from_dict(a).to('cpu')
                all_reg_list += reg_list; all_class_list += class_list
            os.makedirs(save_path.format(f'{i}_{ds_name}/reg'))
            os.makedirs(save_path.format(f'{i}_{ds_name}/class'))
            print('')
            print(f'Round {i}:')
            print(f'N Reg: {len(all_reg_list)}, N class: {len(all_class_list)}', flush=True)
            for _ll, _name in zip([all_reg_list, all_class_list], ['reg', 'class']):
                cur_path = save_path.format(f'{i}_{ds_name}/{_name}') + '/{}'
                for idx, dt in enumerate(tqdm(_ll)):
                    torch.save(dt, cur_path.format(f'data_{idx}.pt'))
        # v21_reg = '/home/zijd/scratch/dse/save/programl/v21-transfer-MLP-True-round1-40kernel-icmp-feb-db-extended-pseudo-block-connected-hierarchy-regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole_perfutil-DSPutil-BRAMutil-LUTutil-FF'
        # v21_class = '/home/zijd/scratch/dse/save/programl/v21-transfer-MLP-True-round1-40kernel-icmp-feb-db-extended-pseudo-block-connected-hierarchy-class_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole_perfutil-DSPutil-BRAMutil-LUTutil-FF'
        v21_reg = '/scratch/zijd/auto_21_full/reg'
        v21_class = '/scratch/zijd/auto_21_full/class'
        reg_dataset = MyOwnDataset(v21_reg)
        reg_dataset = MyOwnDataset(data_files = reg_dataset.processed_file_names)
        class_dataset = MyOwnDataset(v21_class)
        class_dataset = MyOwnDataset(data_files=class_dataset.processed_file_names)
        cal_ds_size(kerns, reg_dataset, class_dataset)
        reg_dataset = MyOwnDataset(save_path.format(f'8_{ds_name}/reg'))
        reg_dataset = MyOwnDataset(data_files = reg_dataset.processed_file_names)
        cal_kern_best(reg_dataset)
    elif FLAGS.gen_ds:
        parser.add_argument('--gen_kernels', nargs='+', required=False)
        parser.add_argument('--gen_dataset', type=str, default=None)
        parser.add_argument('--db_prefix', type=str, default=None)
        parser.add_argument('--db_suffix', type=str, default='')
        parser.add_argument('--max_pragma_length', type=int, default=21)
        FLAGS = parser.parse_args()
        reg_model = dse_utils.get_model(True, rl_utils.get_pragma_dim(), FLAGS.device, 'regression')
        class_model = dse_utils.get_model(False, rl_utils.get_pragma_dim(), FLAGS.device, 'class')
        from src.config import poly_KERNEL, MACHSUITE_KERNEL
        kernels = [k for k in MACHSUITE_KERNEL if k not in ['aes', 'spmv-crs']]
        kernels += poly_KERNEL
        if FLAGS.v21:
            class_model.load_parameter('/home/zijd/dse/software-gnn/models/v21_models/updated_edge_index/class_val_42kernel_45k_95percent_scratch_2lp-2lm.pth')
            reg_model.load_parameter('/home/zijd/dse/software-gnn/models/v21_models/updated_edge_index/regression_val_42kernel_11k_95percent_v20pretrained_2lp-2lm.pth')
        gen_dataset(FLAGS.gen_dataset, kernels, FLAGS.save_path+'/{}', None if not FLAGS.db_prefix else FLAGS.db_prefix+'/{}', FLAGS.db_suffix,\
            reg_model, class_model, FLAGS.max_pragma_length)
    elif FLAGS.get_min:
        parser.add_argument('--db_path', type=str, default='')
        FLAGS = parser.parse_args()
        get_min(FLAGS.db_path)
    elif FLAGS.kth_best:
        parser.add_argument('--db_path', type=str, default='')
        FLAGS = parser.parse_args()
        kernel = FLAGS.cem_kernel
        dataset = 'machsuite' if kernel in ['stencil', 'gemm-blocked', 'gemm-ncubed'] else 'poly'
        dataset = 'new_db' if kernel in ['3d-rendering', 'att-3mm-fuse', 'att-3mm', 'knn', 'spam-filter', 'vmmv'] else dataset
        kth_best(FLAGS.db_path, dataset, kernel)
    