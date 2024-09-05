from src.RL import rl_utils, dse_utils
from src.dse import GNNModel
from src.config import FLAGS, parser
from src.RL.zoo import RLZoo, ActionSpace
from src.result import Result
from src.saver import saver
from src.parameter import compile_design_space, topo_sort_param_ids
from src.algo.sampling import get_edit_dis
import io, argparse
from glob import iglob
import matplotlib.pyplot as plt
import numpy as np

import warnings
warnings.filterwarnings('ignore')

def load_db(db_path: str, port: int):
    import redis, pickle, pickle5
    database = redis.StrictRedis(host='localhost', port=port, db=14)
    database.flushdb()
    res_list = []
    with open(db_path, 'rb') as handle:
        try:
            new_data = pickle.load(handle)
        except:
            new_data = pickle5.load(handle)
        database.hmset(0, new_data)
        keys = [k.decode('utf-8') for k in database.hkeys(0)]
        sort_keys = []
        for key in sorted(keys):
            pickle_obj = database.hget(0, key)
            if pickle_obj is None:
                continue
            obj = rl_utils.RoundAboutPickler(io.BytesIO(pickle_obj)).load()
            res_list.append(obj)
            sort_keys.append(key)
    return res_list, sort_keys

def compare_label_shift(kerns, old_temp: str, new_temp: str):
    plt.rcParams.update({'font.size': 24})
    xys_dict = {'valid': [], 'perf': [], 'BRAM': [], 'FF': [], 'DSP': [], 'LUT': []}
    print(kerns, old_temp, new_temp)
    for kern in kerns:
        db_paths = [f for f in iglob(old_temp, recursive=True) if f.endswith('.db') and f'{kern}_' in f]
        assert len(db_paths) <= 1
        if len(db_paths) == 0: continue
        old_db_path = db_paths[0]
        db_paths = [f for f in iglob(new_temp, recursive=True) if f.endswith('.db') and f'{kern}_' in f]
        assert len(db_paths) <= 1
        if len(db_paths) == 0: continue
        new_db_path = db_paths[0]
        results = [dict(), dict()]
        print(old_db_path, new_db_path)
        for db_path, _dict in zip([old_db_path, new_db_path], results):
            res_list, keys = load_db(db_path, FLAGS.port)
            for res, key in zip(res_list, keys):
                if 'lv1' in key and key.replace('lv1', 'lv2') not in keys:
                    _dict[key[4:]] = 0
                elif 'lv1' in key: continue
                elif type(res) is int or type(res) is dict:
                    continue
                elif res.perf < FLAGS.min_allowed_latency:
                    _dict[key[4:]] = 0
                else:
                    assert 'lv2' in key
                    new_res = Result()
                    new_res.perf = res.perf
                    new_res.valid = res.valid
                    new_res.res_util = res.res_util
                    _dict[key[4:]] = new_res
        for k, v in results[0].items():
            if k in results[1]:
                v2 = results[1][k]
                if isinstance(v, int):
                    if isinstance(v2, int):
                        xys_dict['valid'].append([0,0])
                    else: xys_dict['valid'].append([0,1])
                elif isinstance(v2, int):
                    xys_dict['valid'].append([1,0])
                else:
                    xys_dict['valid'].append([1,1])
                    xys_dict['perf'].append([v.perf, v2.perf])
                    for kk, vv in v.res_util.items():
                        if 'total' in kk: continue
                        rkk = kk[5:]
                        xys_dict[rkk].append([vv, v2.res_util[kk]])
    valid_matrix = [[0,0],[0,0]]
    for k, v in xys_dict.items():
        if k == 'perf':
            if 'v20' in old_temp:
                plt.xlabel('V20 (Cycle)')
                plt.ylabel('V21 (Cycle)')
            else:
                plt.xlabel('V21 (Cycle)')
                plt.ylabel('V23 (Cycle)')
            nv = np.array(v)
            # nv = np.log2(nv)
            plt.scatter(nv[:, 0], nv[:, 1], vmin=-1, vmax=15, linewidths=0.15)
            plt.tight_layout()
            plt.savefig('tmp/baseline/figs/perf.png')
            plt.close()
        elif k == 'valid':
            nv = np.array(v)
            nv = nv[:, 1] - nv[:, 0]
            plt.scatter(np.arange(len(nv)), nv, vmin=-1.2, vmax=1.2, linewidths=0.15)
            plt.savefig('tmp/baseline/figs/valid.png')
            plt.tight_layout()
            plt.close()
        else:
            if 'v20' in old_temp:
                plt.xlabel('V20 (%)')
                plt.ylabel('V21 (%)')
            else:
                plt.xlabel('V21 (%)')
                plt.ylabel('V23 (%)')
            nv = np.array(v)
            plt.scatter(nv[:, 0], nv[:, 1], vmin=0, vmax=np.quantile(nv, 0.9)+0.2, linewidths=0.15)
            plt.tight_layout()
            plt.savefig(f'tmp/baseline/figs/{k}.png')
            plt.close()
        _sum = 0
        for l in v:
            if k == 'perf':
                _sum += max(l[1]/l[0], l[0]/l[1])
            elif k == 'valid':
                valid_matrix[int(l[0])][int(l[1])] += 1
            else:
                _sum += abs(l[1]-l[0])
        _sum /= len(v)
        print(k, round(_sum, 3), len(v))
    print(valid_matrix)
        
def compare_best(kerns, old_temp: str, new_temp: str):
    reg_model = dse_utils.get_model(True, rl_utils.get_pragma_dim(), FLAGS.device, 'regression')
    kern_to_dis = dict()
    for kern in kerns:
        db_paths = [f for f in iglob(old_temp, recursive=True) if f.endswith('.db') and f'{kern}_' in f]
        assert len(db_paths) <= 1
        if len(db_paths) == 0: continue
        old_db_path = db_paths[0]
        db_paths = [f for f in iglob(new_temp, recursive=True) if f.endswith('.db') and f'{kern}_' in f]
        assert len(db_paths) <= 1
        if len(db_paths) == 0: continue
        new_db_path = db_paths[0]
        
        dataset = 'machsuite' if kern in ['gemm-blocked', 'gemm-ncubed', 'stencil'] else 'poly'
        graph_path = rl_utils.get_graph_path(dataset)
        G = rl_utils.get_graph(graph_path, kern)
        config_path = rl_utils.get_config_path(dataset, kern)
        config = rl_utils.load_config(config_path, saver)
        ds, n_point = compile_design_space(
            config['design-space']['definition'],
            None,
            saver,
            do_count=True
        )
        ordered_pids = topo_sort_param_ids(ds)
        acs = ActionSpace.from_ds(ds, ordered_pids)
        best_designs = []
        for data_list in [
            dse_utils.get_datalist(old_db_path, G, 'regression', reg_model), 
            dse_utils.get_datalist(new_db_path, G, 'regression', reg_model)
        ]:
            chosen = None; min_perf = float('inf')
            for dt in data_list:
                if RLZoo.is_valid(dt):
                    if float(dt.actual_perf) < min_perf:
                        chosen = dse_utils.trunc_dt(dt.point, ds, acs)
                        for k, v in chosen.items():
                            if RLZoo.validate_value(ds, chosen, k):
                                print(dt.point)
                                print(chosen)
                                assert 0
                        min_perf = float(dt.actual_perf)
            best_designs.append(chosen)
        kern_to_dis[kern] = get_edit_dis(best_designs[0], best_designs[1], acs)
    for k, v in kern_to_dis.items():
        print(k, v)
    


if __name__ == '__main__':
    parser.add_argument('--compare_kernels', nargs='+', required=True)
    parser.add_argument('--old_temp', type=str, required=True)
    parser.add_argument('--new_temp', type=str, required=True)
    parser.add_argument('--compare_best', action=argparse.BooleanOptionalAction, default=False)
    FLAGS = parser.parse_known_args()[0]
    if not FLAGS.compare_best:
        compare_label_shift(FLAGS.compare_kernels, FLAGS.old_temp, FLAGS.new_temp)
    else:
        compare_best(FLAGS.compare_kernels, FLAGS.old_temp, FLAGS.new_temp)
    pass