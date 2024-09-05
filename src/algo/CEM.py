from src.RL.zoo import RLZoo, ActionSpace
from src.RL.data import PrivateDB
from src.RL import rl_utils, dse_utils, hls
from src.dse import GNNModel, ExhaustiveExplorer
from src.parameter import DesignSpace, get_default_point, \
    compile_design_space, topo_sort_param_ids, DesignPoint
from src.result import Result
from src.saver import saver
from src.config import FLAGS, parser
from src.algo.sampling import get_embeds_centroid, DsHelper, get_edit_dis
from src.utils import get_root_path
from src.model import MulNet

from typing import Dict, Any, List
from glob import iglob
import numpy as np
import networkx as nx
import uuid, torch, random, time, argparse
from tqdm.rich import tqdm

import os, warnings
warnings.filterwarnings('ignore')

class WholeCEM:
    def __init__(
        self, 
        ac_space: ActionSpace,
        ds: DesignSpace,
        G: nx.Graph,
        config: Dict[str, Any],
        reg_model: GNNModel,
        class_model: GNNModel,
        param: Dict[str, Any],
        hq: hls.PrivateHQ = None
    ):
        self.dist_per_pragma = dict()
        self.param = param
        self.ac_space = ac_space; self.ds = ds; self.G = G; self.config = config
        self.reg_model, self.class_model = reg_model, class_model
        self.default_point = get_default_point(self.ds)
        self.hq = hq
        assert self.ready()
    
    def ready(self):
        if 'kth' in self.param:
            self.kth = self.param['kth']
            self.ds_helper = DsHelper(self.ds, self.ac_space.ordered_pids)
            self.kth_point = self.ds_helper.get_kth(self.kth)
            mark = True
        for idx, pid in enumerate(self.ac_space.ordered_pids):
            length = len(self.ac_space.full_action_map[idx])
            # if 'TILE' in pid:
            #     length -= 1
            if 'TILE' in pid and 'no_tile' in self.param and self.param['no_tile']:
                self.dist_per_pragma[idx] = np.zeros((length,))
                self.dist_per_pragma[idx][0] = 0.5
                self.dist_per_pragma[idx][-1] = 0.5
            elif 'kth' in self.param:
                if mark and self.kth_point[pid] == self.ac_space.full_action_map[idx][0]:
                    self.dist_per_pragma[idx] = np.zeros((length,))
                    self.dist_per_pragma[idx][0] = 1.
                else:
                    if mark == True:
                        R = min(self.ac_space.full_action_map[idx].index(self.kth_point[pid]), length-1)
                        self.dist_per_pragma[idx] = np.zeros((length,))
                        self.dist_per_pragma[idx][:R+1] = 1.
                        assert np.sum(self.dist_per_pragma[idx]) == R+1
                        self.dist_per_pragma[idx] /= float(R+1)
                        pass
                    else:
                        self.dist_per_pragma[idx] = np.ones((length,))
                        self.dist_per_pragma[idx] /= self.dist_per_pragma[idx].shape[0]
                    mark = False
            else:
                self.dist_per_pragma[idx] = np.ones((length,))
                self.dist_per_pragma[idx] /= self.dist_per_pragma[idx].shape[0]
        self.best_perf = -float('inf')
        self.best_res = -float('inf')
        self.prev_best_points = []
        self.prev_best_res = []
        return True
    
    def get_population(self, pop):
        bound = None if 'bound' not in self.param else self.param['bound']
        key_set = set()
        point_list = []
        for i in tqdm(range(pop)):
            new_point = RLZoo.clone_point(self.default_point)
            for idx, pid in enumerate(self.ac_space.ordered_pids):
                n_option = self.dist_per_pragma[idx].shape[0]
                val_idx = int(np.random.choice(n_option, 1, p=self.dist_per_pragma[idx]).squeeze())
                val = self.ac_space.full_action_map[idx][val_idx]
                new_point = RLZoo.get_next_point(self.ds, new_point, pid, val)
            if bound is not None:
                if self.param['perf_f'](new_point) > bound:
                    i -= 1
                    continue
            key = rl_utils.point_to_str(new_point)
            if key not in key_set:
                key_set.add(key)
                point_list.append(new_point)
        return key_set, point_list
    
    def keep_prev_best(self, key_set, point_list, rets):
        if len(self.prev_best_points):
            self.prev_best_res = RLZoo.get_results(
                self.G, self.config, self.reg_model, self.class_model, self.prev_best_points, 'None',
                # redundant=False
            )
        for idx, point in enumerate(self.prev_best_points):
            key = rl_utils.point_to_str(point)
            if key not in key_set:
                point_list.append(point)
                rets.append(self.prev_best_res[idx])
                key_set.add(key)
        self.prev_best_res = []
        self.prev_best_points = []
    
    def update_dist(self, topk, alpha, key_set, point_list, rets):
        self.keep_prev_best(key_set, point_list, rets)
        valid_perfs = []
        valid_idxs = []
        for idx, ret in enumerate(rets):
            if ret[0].valid:
                valid_perfs.append(ret[0].perf)
                valid_idxs.append(idx)
        grace = 50
        while len(valid_idxs) < 22 and grace > 0:
            grace -= 1
            print(len(valid_idxs))
            _, new_points = self.get_population(500)
            new_rets = RLZoo.get_results(
                self.G, self.config, self.reg_model, self.class_model, new_points, 'None',
                # redundant=False
            )
            for idx, ret in enumerate(new_rets):
                if ret[0].valid:
                    key = rl_utils.point_to_str(new_points[idx])
                    if key not in key_set:
                        point_list.append(new_points[idx])
                        rets.append(ret)
                        valid_perfs.append(ret[0].perf)
                        valid_idxs.append(len(rets)-1)
        valid_perfs = np.array(valid_perfs, dtype=np.float32)
        valid_idxs = np.array(valid_idxs, dtype=np.int32)
        topk = int(len(valid_idxs)*topk)
        topk = max(topk, 20)
        topk = min(topk, 60, len(valid_idxs))
        print('Selecting:', valid_idxs.shape[0], topk)
        sorted_idxs = np.argsort(valid_perfs)
        top_idxs = valid_idxs[sorted_idxs[-topk:]]
        new_dist_per_pragma = dict()
        for idx, pid in enumerate(self.ac_space.ordered_pids):
            length = len(self.ac_space.full_action_map[idx])
            # if 'TILE' in pid:
            #     length -= 1
            new_dist_per_pragma[idx] = np.zeros((length,))
        assert len(top_idxs) == topk
        best_idx = top_idxs[-1]
        best_res = rets[best_idx][0]
        best_res.point = point_list[best_idx]
        assert best_res.valid
        best_perf = best_res.perf
        for i in range(min(10, len(top_idxs))):
            idx = top_idxs[-(i+1)]
            print(round(rets[idx][0].perf, 3))
            if self.hq is not None:
                rets[idx][0].point = point_list[idx]
                self.hq.append(rets[idx][0])
        for i in range(topk):
            point = point_list[top_idxs[i]]
            for pid, v in point.items():
                idx, offset = self.ac_space.to_idx_offset(pid, v)
                new_dist_per_pragma[idx][offset] += 1
            self.prev_best_points.append(point)
            self.prev_best_res.append(rets[top_idxs[i]])
        for k in new_dist_per_pragma.keys():
            new_dist_per_pragma[k] /= topk
            new_dist_per_pragma[k] *= alpha
            new_dist_per_pragma[k] += (1.-alpha) * self.dist_per_pragma[k]
        self.dist_per_pragma = new_dist_per_pragma
        return best_perf, best_res
            
    def update(self, t: int, is_last_epoch: bool):
        pop = self.param['pop']; topk = self.param['topk']; alpha = self.param['alpha']
        if isinstance(pop, int):
            key_set, point_list = self.get_population(pop)
        else:
            # is list
            assert len(pop) > t
            key_set, point_list = self.get_population(pop[t])
        rets = RLZoo.get_results(self.G, self.config, self.reg_model, self.class_model, point_list, 'None')
        return self.update_dist(topk, alpha, key_set, point_list, rets)
            
    def adapt(self, n_epochs: int, debug=False):
        if debug:
            print('============== Sample Distribution =============')
            for k, v in self.dist_per_pragma.items():
                print(f'{self.ac_space.ordered_pids[k]}: {np.round(v, decimals=2)}')
            print('================================================', flush=True)
        tic = time.perf_counter()
        for t in range(n_epochs):
            is_last_epoch = (t == n_epochs-1)
            new_best_perf, new_best_res = self.update(t, is_last_epoch)
            self.best_perf = new_best_perf
            self.best_res = new_best_res
            print('Best perf:', self.best_perf)
            print('Best res:', self.best_res.point, flush=True)
            if debug:
                print('============== Sample Distribution =============')
                for k, v in self.dist_per_pragma.items():
                    print(f'{self.ac_space.ordered_pids[k]}: {np.round(v, decimals=2)}')
                print('================================================', flush=True)
            toc = time.perf_counter()
            print('Elapsed:', round((toc - tic)/3600, 3), 'hour', flush=True)
        return self.best_perf, self.best_res

def get_top_idxs(values: np.ndarray, topk: int):
    idxs = np.argsort(values)
    topk = min(topk, len(idxs))
    return idxs[-topk:]
    
class WholeActiveCEM(WholeCEM):
    def __init__(
        self, 
        ac_space: ActionSpace,
        ds: DesignSpace,
        G: nx.Graph,
        config: Dict[str, Any],
        reg_model: GNNModel,
        class_model: GNNModel,
        param: Dict[str, Any],
        db: PrivateDB,
        hq: hls.PrivateHQ
    ):
        super(WholeActiveCEM, self).__init__(ac_space, ds, G, config, reg_model, class_model, param)
        self.db = db; self.hq = hq
        assert self.post_ready()

    def post_ready(self):
        lr, w_dec, n_freeze = self.param['ft_lr'], self.param['ft_wdec'], self.param['ft_nfreeze']
        self.reg_model.get_optimizer(lr, w_dec); self.reg_model.freeze_layers(n_freeze)
        self.class_model.get_optimizer(lr, w_dec); self.class_model.freeze_layers(n_freeze)
        self.best_real_perf = float('inf')
        self.best_real_res = None
        return True

    def update_model(self, point_list: List[DesignPoint], is_last_update: bool):
        class_uncertain_topk = 1.0; B = self.hq.B; class_portion = 0.3
        class_B = int(B * class_portion); reg_B = B - class_B
        if is_last_update:
            reg_B = B
            class_B = 0
        timeout = self.param['hls_timeout']; ft_epoch = self.param['ft_epoch']
        rets, reg_datalist, class_datalist = RLZoo.get_results(
            self.G, self.config, self.reg_model, self.class_model, point_list, 'embed',
            return_datalist=True, 
            # redundant=False
        )
        reg_idxs = []
        class_idxs = []
        for i in range(len(point_list)):
            if rets[i][0].ret_code == Result.RetCode.PASS:
                if self.db.is_exist(point_list[i]):
                    continue
                reg_idxs.append(i)
            else:
                assert rets[i][0].ret_code == Result.RetCode.UNAVAILABLE
                if self.db.is_exist(point_list[i]):
                    continue
                class_idxs.append(i)
        batch_idxs = []
        print(len(class_idxs), len(reg_idxs), flush=True)
        if is_last_update:
            _top = reg_B
            perf_list = []
            for idx in reg_idxs:
                perf_list.append(float(rets[idx][0].perf))
            sort_pos = np.argsort(perf_list)[-_top:]
            reg_idxs = [reg_idxs[pos] for pos in sort_pos]
            class_idxs = []
        if len(class_idxs) and class_B != 0:
            class_uncertain_elite = max(int(class_uncertain_topk * len(class_idxs)), 1)
            class_elite_idxs = get_top_idxs(
                np.array([rets[i][0].class_uncertainty.detach().cpu().numpy() for i in class_idxs]),
                class_uncertain_elite
            )
            new_class_idxs = [class_idxs[i] for i in class_elite_idxs]
            class_idxs = new_class_idxs
            class_embeds = np.array([rets[i][1].detach().cpu().numpy() for i in class_idxs])
            class_B = min(class_B, len(class_idxs))
            chosen, _ = get_embeds_centroid(class_embeds, class_B, 100) # k-means++
            batch_idxs += [class_idxs[i] for i in chosen]
        if len(reg_idxs):
            reg_embeds = np.array([rets[i][1].detach().cpu().numpy() for i in reg_idxs])
            reg_B = min(reg_B, len(reg_idxs))
            chosen, _ = get_embeds_centroid(reg_embeds, reg_B, 100)
            batch_idxs += [reg_idxs[i] for i in chosen]
        if len(batch_idxs):
            assert len(batch_idxs) <= B
            self.hq.clear()
            assert self.hq.n == self.hq.B
            for i in batch_idxs:
                rets[i][0].point = point_list[i]
                self.hq.append(rets[i][0])
            new_db_path = self.hq.query_batch_remote(timeout, no_ssh=True)
            new_best_res = self.db.extend(new_db_path)
            if new_best_res is not None:
                if new_best_res.perf < self.best_real_perf:
                    self.best_real_perf = new_best_res.perf
                    self.best_real_res = new_best_res
        print('Best (real) performance:', self.best_real_perf, flush=True)
        if 'bound' in self.param:
            self.param['bound'] = min(self.param['bound'], int(self.best_real_perf))
        if self.best_real_res is not None:
            print(self.best_real_res.point, flush=True)
        reg_loader, class_loader = self.db.get_loader()
        print(f'Finetuning on {len(self.db.reg_data_list)} regression and {len(self.db.class_data_list)} data')
        if reg_loader is not None and len(self.db.reg_data_list) > 5:
            self.reg_model.finetune(reg_loader, ft_epoch)
        if class_loader is not None:
            self.class_model.finetune(class_loader, ft_epoch)
        return reg_datalist, class_datalist
    
    def keep_prev_best(self, key_set, point_list, rets):
        if len(self.prev_best_points):
            self.prev_best_res = RLZoo.get_results(
                self.G, self.config, self.reg_model, self.class_model, self.prev_best_points, 'None',
                # redundant=False
            )
        for idx, point in enumerate(self.prev_best_points):
            key = rl_utils.point_to_str(point)
            if key not in key_set:
                point_list.append(point)
                rets.append(self.prev_best_res[idx])
        self.prev_best_res = []
        self.prev_best_points = []
    
    def update(self, t: int, is_last_update: bool):
        pop = self.param['pop']; topk = self.param['topk']; alpha = self.param['alpha']
        freq = self.param['freq']
        if isinstance(pop, int):
            key_set, point_list = self.get_population(pop)
        else:
            # is list
            assert len(pop) > t
            key_set, point_list = self.get_population(pop[t])
        self.key_set = key_set; self.point_list = point_list
        rets = None
        if t % freq == 0:
            reg_datalist, class_datalist = self.update_model(point_list, is_last_update) # active learning
            rets = RLZoo.get_results(
                self.G, self.config, self.reg_model, self.class_model, point_list, 'None',
                reg_datalist=reg_datalist, class_datalist=class_datalist,
            )
        else:
            rets = RLZoo.get_results(
                self.G, self.config, self.reg_model, self.class_model, point_list, 'None',
            )
        return self.update_dist(topk, alpha, key_set, point_list, rets)
    
    def adapt(self, n_epochs: int, debug=False):
        _ = super(WholeActiveCEM, self).adapt(n_epochs, debug)
        return self.best_real_perf, self.best_real_res
   
def seed_all(seed: int):
    random.seed(seed)
    torch.manual_seed(seed)
    np.random.seed(seed)

if __name__ == '__main__':
    parser.add_argument('--run_domain', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--run_23', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--prune_tile', action=argparse.BooleanOptionalAction, default=True)
    FLAGS = parser.parse_args()
    
    ##### Pars #####
    kernel = FLAGS.cem_kernel
    dataset = 'machsuite' if kernel in ['stencil', 'gemm-blocked', 'gemm-ncubed', 'md', 'nw', 'stencil-3d', 'spmv-ellpack'] else 'poly'
    dataset = 'new_db' if kernel in ['3d-rendering', 'att-3mm-fuse', 'att-3mm', 'knn', 'spam-filter', 'vmmv'] else dataset
    config_path = rl_utils.get_config_path(dataset, kernel)
    cem_param = dict(
        {
            'pop': 5000, 'topk': 0.03, 'alpha': 0.7,
            'ft_lr': 1e-4, 'ft_wdec': 1e-4, 'ft_nfreeze': 0, 'ft_epoch': 30, 'freq': 1,
            'hls_timeout': 60
        }
    )
    hls_batch_size = 30
    redis_db_id = int(FLAGS.cem_db_id)
    seed = 10003
    ################
    seed_all(seed)
    print('Using redis port:', FLAGS.port, flush=True)
    print('Redis db id:', redis_db_id, flush=True)
    # TODO: simplify the init process with dse.get_default*
    config = rl_utils.load_config(config_path, saver)
    ds, _ = compile_design_space(
        config['design-space']['definition'], None, saver, do_count=True
    )
    ordered_pids = topo_sort_param_ids(ds)
    ac_space = ActionSpace.from_ds(ds, ordered_pids)
    graph_path = rl_utils.get_graph_path(dataset)
    G = rl_utils.get_graph(graph_path, kernel)
    device = FLAGS.device
    print(f'[INFO] Using device: {device}')
    reg_model = dse_utils.get_model(True, rl_utils.get_pragma_dim(), device, 'regression')
    class_model = dse_utils.get_model(False, rl_utils.get_pragma_dim(), device, 'class')
    if FLAGS.run_domain:
        reg_model.load_parameter('/home/zijd/dse/software-gnn/models/transfer/domain/v21_base_split1/reg.pth')
        class_model.load_parameter('/home/zijd/dse/software-gnn/models/transfer/domain/v21_base_split1/class.pth')
    if FLAGS.run_23:
        reg_model.load_parameter('/home/zijd/dse/software-gnn/models/v21_models/regression_val_42kernel_11k_95percent_v20pretrained_2lp-2lm.pth')
        class_model.load_parameter('/home/zijd/dse/software-gnn/models/v21_models/class_val_42kernel_45k_95percent_scratch_2lp-2lm.pth')
    db_path = hls.get_db_path_default(dataset, kernel)
    if db_path is not None:
        db_path = None
    db = PrivateDB(db_path, G, reg_model, class_model, kernel=FLAGS.cem_kernel)
    hq = hls.PrivateHQ(
        hls_batch_size, hls_batch_size, dataset, kernel, uuid.uuid4(), redis_db_id, 'va'
    )
    
    ################
    test_exh = True
    cem_type = 'active_cem'
    ################
    
    if cem_type == 'active_cem':
        if not FLAGS.run_domain:
            if FLAGS.prune_tile:
                version_code = 'v20'
                round_num = 3
                if FLAGS.run_23:
                    version_code = 'v21'
                    round_num = 1
                if dataset == 'machsuite':
                    templ = f'{get_root_path()}/dse_database/**/databases/{version_code}/original-size/one-db-extended-round{round_num}/**'
                else:
                    templ = f'{get_root_path()}/dse_database/**/databases/{version_code}/one-db/one-db-extended-round{round_num}/**'
                db_paths = [f for f in iglob(templ, recursive=True) if f.endswith('.db') and f'{dataset}' in f and f'{kernel}_' in f]
                if len(db_paths) == 0:
                    version_code = 'v18'
                    round_num = 13
                    if dataset == 'machsuite':
                        templ = f'{get_root_path()}/dse_database/**/databases/{version_code}/original-size/one-db-extended-round{round_num}/**'
                    else:
                        templ = f'{get_root_path()}/dse_database/**/databases/{version_code}/one-db/one-db-extended-round{round_num}/**'
                    db_paths = [f for f in iglob(templ, recursive=True) if f.endswith('.db') and f'{dataset}' in f and f'{kernel}_' in f]
                db_path = db_paths[0]
                old_reg_list = dse_utils.get_datalist(db_path, G, 'regression', reg_model)
                cnt_tile = 0
                cnt_valid = 0
                # check the top-10
                tmp_hq = hls.PrivateHQ(10, 10, 'poly', FLAGS.cem_kernel, uuid.uuid4(), FLAGS.cem_db_id, 'va')
                for dt in old_reg_list:
                    if RLZoo.is_valid(dt):
                        cnt_valid += 1
                        for k, v in dt.point.items():
                            pidx = ac_space.pids_to_idx[k]
                            if 'TILE' in k and v != 1 and v != ac_space.full_action_map[pidx][-1]:
                                cnt_tile += 1
                                break
                        res = Result()
                        res.perf = dt.perf
                        res.point = dt.point
                        tmp_hq.append(res)
                mark = False
                for res in tmp_hq.buf.values():
                    for k, v in res.point.items():
                        pidx = ac_space.pids_to_idx[k]
                        if 'TILE' in k and v != 1 and v != ac_space.full_action_map[pidx][-1]:
                            mark = True
                            break
                del tmp_hq
                print('Num tile:', cnt_tile)
                print(cnt_tile/cnt_valid)
                print('Top-10 have tile:', mark)
                if cnt_tile/cnt_valid < 0.1 and not mark:
                    cem_param['no_tile'] = True
                if 'no_tile' in cem_param and cem_param['no_tile']:
                    print(f'[INFO] {kernel} no tile')
        else:
            print(f'[INFO] Running on new domain')
        optimizer = WholeActiveCEM(
            ac_space, ds, G, config, reg_model, class_model, cem_param, db, hq
        )
    elif cem_type == 'cem':
        optimizer = WholeCEM(
            ac_space, ds, G, config, reg_model, class_model, cem_param, hq=hq
        )
    optimizer.adapt(8, debug=True)
    
    pred_best_latency = int(1e7/(2 ** (optimizer.best_perf*2)))
    print(f'Kernel {kernel} predicted best perf: {optimizer.best_perf}')
    print(f'Kernel {kernel} predicted best perf: {pred_best_latency}')