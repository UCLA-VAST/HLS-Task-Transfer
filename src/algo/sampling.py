from src.parameter import DesignSpace, DesignPoint, topo_sort_param_ids, compile_design_space
from src.result import Result
from src.dse import GNNModel
from src.config import FLAGS, poly_KERNEL
from src.saver import saver
from src.utils import get_root_path
from src.RL.zoo import RLZoo, ActionSpace
from src.RL import hls
import src.RL.rl_utils as rl_utils
import src.RL.dse_utils as dse_utils

from typing import List, Dict, Tuple, Any, Union
from tqdm import tqdm
from torch_geometric.data import Data, DataLoader
from scipy.cluster.vq import kmeans2
from sklearn.cluster import KMeans
from sklearn.manifold import TSNE
from glob import iglob
import matplotlib.pyplot as plt
import seaborn as sns
import random, time, torch_geometric, sklearn, torch, os, pickle
import numpy as np
import networkx as nx
import pandas as pd
from math import inf

def uniform_sample_one(ds: DesignSpace, perturb: int, sv_cnt: Dict[Tuple[str, int], int]):
    if sv_cnt == None:
        cnt: Dict[Tuple[str, int], int] = dict()
    else:
        cnt = sv_cnt
    def _count(ds: DesignSpace, sorted_pids: List[str], h: int, point: DesignPoint):
        cur_state = tuple([rl_utils.point_to_str(point), h])
        if cur_state in cnt:
            return cnt[cur_state]
        if h == len(sorted_pids):
            cnt[cur_state] = 1
            return 1
        pid = sorted_pids[h]
        param = ds[pid]
        options = eval(param.option_expr, point.copy())
        cnt[cur_state] = 0
        if param.child:
            for option in options:
                point[pid] = option # ch
                cnt[cur_state] += _count(ds, sorted_pids, h+1, point)
            point.pop(pid)
            assert cur_state[0] == rl_utils.point_to_str(point)
        else:
            assert cur_state[0] == rl_utils.point_to_str(point)
            cnt[cur_state] = len(options) * _count(ds, sorted_pids, h+1, point)
        return cnt[cur_state]
    
    def dfs(ds: DesignSpace, sorted_pids: List[str], h: int, point: DesignPoint):
        if h == len(sorted_pids):
            return point.copy()
        pid = sorted_pids[h]
        param = ds[pid]
        options = eval(param.option_expr, point.copy())
        ret = None
        if h < perturb:
            # uniform probability for each point
            _id = random.randint(0, len(options)-1)
            if param.child:
                point[pid] = options[_id]
            ret = dfs(ds, sorted_pids, h+1, point)
            if not param.child:
                ret[pid] = options[_id]
        else:
            if param.child:
                cnt_leaf = []
                for option in options:
                    point[pid] = option
                    cnt_leaf.append(_count(ds, sorted_pids, h+1, point))
                _sum = 0.0
                for cnt in cnt_leaf:
                    _sum += cnt
                for i in range(len(cnt_leaf)):
                    cnt_leaf[i] /= _sum
                _id = np.random.choice(np.arange(len(options), dtype=int), p=cnt_leaf)
                point[pid] = options[_id]
                ret = dfs(ds, sorted_pids, h+1, point)
            else:
                _id = random.randint(0, len(options)-1)
                ret = dfs(ds, sorted_pids, h+1, point)
                ret[pid] = options[_id]
        if pid in point:
            point.pop(pid)
        return ret
    sorted_pids = topo_sort_param_ids(ds)
    
    point: Dict[str, Any] = dict()
    _count(ds, sorted_pids, 0, point)
    ret = dfs(ds, sorted_pids, 0, point)
    return ret, cnt
    
class DsHelper:
    def __init__(self, ds: DesignSpace, ordered_pids: List[str], cnt_point: Dict[Tuple[str, int], int] = None):
        self.ds = ds
        self.ordered_pids = ordered_pids
        if cnt_point is not None:
            self.cnt_point = cnt_point
        else:
            self.cnt_point: Dict[Tuple[str, int], int] = dict()
        self.full_options: Dict[str, Union[List[int], List[str]]] = dict()
        self.options_to_idx: Dict[str, Dict[str, int]] = dict()
        for pid in self.ordered_pids:
            options = RLZoo.get_full_options(self.ds[pid].option_expr)
            self.options_to_idx[pid] = dict()
            for i, option in enumerate(options):
                self.options_to_idx[pid][option] = i
            self.full_options[pid] = options
        
    def count(ds: DesignSpace, sorted_pids: List[str], cnt: Dict[Tuple[str, int], int], h: int, point: DesignPoint):
        cur_state = tuple([rl_utils.point_to_str(point), h])
        if cur_state in cnt:
            return cnt[cur_state]
        if h == len(sorted_pids):
            cnt[cur_state] = 1
            return 1
        pid = sorted_pids[h]
        param = ds[pid]
        options = eval(param.option_expr, point.copy())
        cnt[cur_state] = 0
        if param.child:
            for option in options:
                point[pid] = option # ch
                cnt[cur_state] += DsHelper.count(ds, sorted_pids, cnt, h+1, point)
            point.pop(pid)
            assert cur_state[0] == rl_utils.point_to_str(point)
        else:
            assert cur_state[0] == rl_utils.point_to_str(point)
            cnt[cur_state] = len(options) * DsHelper.count(ds, sorted_pids, cnt, h+1, point)
        return cnt[cur_state]
    
    def get_kth(self, k: int):
        point = dict()
        _cur_k = 0
        n_pids = len(self.ordered_pids)
        #TODO: seperate the dependency tree, and speedup this part
        for i in range(n_pids):
            pid = self.ordered_pids[i]
            param = self.ds[pid]
            options = eval(param.option_expr, point.copy())
            _size = None
            if not param.child:
                _size = DsHelper.count(self.ds, self.ordered_pids, self.cnt_point, i+1, point)
            for j, v in enumerate(options):
                point[pid] = v
                if param.child:
                    _size = DsHelper.count(self.ds, self.ordered_pids, self.cnt_point, i+1, point)
                if _cur_k + _size >= k:
                    break
                else:
                    _cur_k += _size
        assert rl_utils.verify_point(self.ds, point)
        return point
    
    def lt(self, A: DesignPoint, B: DesignPoint):
        assert rl_utils.verify_point(self.ds, A), 'Point not from the design space'
        assert rl_utils.verify_point(self.ds, B), 'Point not from the design space'
        for pid in self.ordered_pids:
            if A[pid] != B[pid]:
                if not isinstance(A[pid], str):
                    return A[pid] < B[pid]
                else:
                    _option_to_idx = self.options_to_idx[pid]
                    return _option_to_idx[A[pid]] < _option_to_idx[B[pid]]
        return False
                
    def le(self, A: DesignPoint, B: DesignPoint):
        _eq = True
        for pid in self.ordered_pids:
            if A[pid] != B[pid]:
                _eq = False
                break
        return _eq or self.lt(A, B)

def random_sample(ds: DesignSpace, N: int):
    ret: List[DesignPoint] = []
    cnt = None
    # print('Init Leaf count...')
    # point, cnt = uniform_sample_one(ds, perturb=0, sv_cnt=cnt)
    for i in tqdm(range(N)):
        # could be partially uniform
        point, cnt = uniform_sample_one(ds, perturb=100000, sv_cnt=cnt)
        ret.append(point)
    return ret

# random sample with memorization
def random_sample_inc(ds: DesignSpace, N: int, cnt: Dict[Tuple[str, int], int] = None):
    ret: List[DesignPoint] = []
    for i in range(N):
        # could be partially uniform
        point, cnt = uniform_sample_one(ds, perturb=100000, sv_cnt=cnt)
        ret.append(point)
    return ret

def get_starting_points(
    ds: DesignSpace, init_pop: int, N: int, 
    G: nx.Graph, config: Dict[str, Any], reg_model: GNNModel, valid_model: GNNModel, 
    _round: int, _finalize: bool, batch_size: int = FLAGS.batch_size, prune_invalid: bool = True
):
    samps = random_sample(ds, init_pop)
    data_list: List[Data] = []
    for samp in samps:
        data_list.append(dse_utils.apply_design_point(G, reg_model, samp, 'regression'))
    # verify
    for samp in samps:
        assert rl_utils.verify_point(ds, samp)
    Loader = torch_geometric.loader.DataLoader(data_list, batch_size=batch_size, shuffle=False)
    results, all_embeds = reg_model.test(Loader, config['evaluate'], mode='regression', return_embed=True)
    embeds = []
    valid_samps = []
    for i in range(len(results)):
        if not prune_invalid:
            results[i].valid = True
        if results[i].valid:
            embeds.append(all_embeds[i])
            valid_samps.append(samps[i])
    samps = valid_samps
    for i in range(len(embeds)):
        embeds[i] = embeds[i].detach().cpu().numpy()
    embeds = np.array(embeds)
    tic = time.perf_counter()
    print(f'[Debug] Found {embeds.shape[0]} valid embeds')
    print(f'Running k-means for {_round} rounds')
    kmeans = KMeans(n_clusters=N, max_iter=_round).fit(embeds)
    centroids, labels = kmeans.cluster_centers_, kmeans.labels_
    print(f'K-Means elapsed: {time.perf_counter()-tic}')
    if _finalize:
        mn = np.ones((N), dtype=np.float32) * inf
        chosen = np.ones((N), dtype=np.int32) * -1
        for i in range(embeds.shape[0]):
            centroid = centroids[labels[i]]
            dis = np.linalg.norm(embeds[i] - centroid, ord=2)
            if dis < mn[labels[i]]:
                mn[labels[i]] = dis
                chosen[labels[i]] = i
        return np.array(samps), chosen, labels, embeds
    else:  
        return centroids, labels, embeds

def show_clustering(centroids: np.ndarray, labels: np.ndarray, embeds: np.ndarray, fig_path: str):
    embeds = np.concatenate([embeds, centroids])
    labels = np.concatenate([labels, np.arange(centroids.shape[0], dtype=np.int32)])
    embeds = TSNE(n_components=2, perplexity=50, learning_rate='auto', init='random').fit_transform(embeds)
    print(embeds.shape)
    ids = np.zeros((labels.shape[0]), dtype=np.int32)
    ids[-centroids.shape[0]:] = 1
    data = dict()
    data['x'] = embeds[:, 0]
    data['y'] = embeds[:, 1]
    data['label'] = labels
    data['id'] = ids
    df = pd.DataFrame.from_dict(data)
    plot = sns.scatterplot(df, x='x', y='y', hue='label', palette='deep', style='id')
    fig = plot.get_figure()
    fig.savefig(fig_path.format('clusters.png'))
    
def get_embeds_centroid(embeds: np.ndarray, n: int, max_iter: int):
    tic = time.perf_counter()
    kmeans = KMeans(n_clusters=n, max_iter=max_iter).fit(embeds)
    centroids, labels = kmeans.cluster_centers_, kmeans.labels_
    print(f'K-Means elapsed: {time.perf_counter()-tic}')
    mn = np.ones((n), dtype=np.float32) * inf
    chosen = np.ones((n), dtype=np.int32) * -1
    for i in range(embeds.shape[0]):
        centroid = centroids[labels[i]]
        dis = np.linalg.norm(embeds[i] - centroid, ord=2)
        if dis < mn[labels[i]]:
            mn[labels[i]] = dis
            chosen[labels[i]] = i
    return chosen, labels

def tsne_plot(embeds: np.ndarray, labels: np.ndarray, path: str, styles: np.ndarray = None):
    embeds = TSNE(n_components=2, perplexity=20, learning_rate='auto', init='random').fit_transform(embeds)
    data = dict()
    data['x'] = embeds[:, 0]
    data['y'] = embeds[:, 1]
    data['label'] = labels
    df = pd.DataFrame.from_dict(data)
    plot = sns.scatterplot(df, x='x', y='y', hue='label', palette='deep', style=styles)
    fig = plot.get_figure()
    fig.savefig(path)
    
def get_distance_simple(point1: DesignPoint, point2: DesignPoint):
    for k in point1.keys():
        if k not in point2:
            assert 0
    for k in point2.keys():
        if k not in point1:
            assert 0
    cnt = 0
    for k in point1.keys():
        if point1[k] != point2[k]:
            cnt += 1
    return cnt

def single_gnn_eval(task: str, model_path: str, device: torch.device, data_list: List[Data]):
    loader = DataLoader(data_list, batch_size=128, shuffle=False)
    model = dse_utils.get_model(False, rl_utils.get_pragma_dim(), device, task)
    model.load_parameter(model_path)
    if 'reg' in task:
        config = {'max-util': {'BRAM': 0.8001, 'DSP': 0.8001, 'FF': 0.8001, 'LUT': 0.8001}}
        return model.test(loader, config, task, show_tqdm=True)
    else:
        corrects, positive_prob = model.test(loader, {}, task, return_uncertainty=True, class_positive=True, show_tqdm=True)
        return corrects, positive_prob

class EnsembleWrapper:
    def __init__(self, reg_model_paths: List[str], class_model_paths: List[str], cand_devices: List[torch.device]):
        pragma_dim = rl_utils.get_pragma_dim()
        self.reg_paths = reg_model_paths; self.class_paths = class_model_paths
        self.cand_devices = cand_devices
        self.n_dev = len(self.cand_devices)
        self.n_model = len(self.reg_paths)
        assert len(self.reg_paths) == len(self.class_paths)
        
    def forward_reg(self, data_list: List[Data]):
        args = [
            ('regression', self.reg_paths[i], self.cand_devices[i%self.n_dev], data_list) \
                for i in range(self.n_model)
        ]
        rets = rl_utils.para_map(single_gnn_eval, args, self.n_model, False)
        assert len(rets) == self.n_model
        actual_rets = []
        for i in range(len(rets[0])):
            new_ret = Result()
            v_dict = dict()
            v_dict['perf'] = np.zeros((self.n_model,))
            for k in ['util-BRAM', 'util-DSP', 'util-LUT', 'util-FF']:
                v_dict[k] = np.zeros((self.n_model,))
            for t in range(self.n_model):
                v_dict['perf'][t] = rets[t][i].perf
                for k in ['util-BRAM', 'util-DSP', 'util-LUT', 'util-FF']:
                    v_dict[k][t] = rets[t][i].res_util[k]
            for k in v_dict.keys():
                new_ret.reg_uncertainties[k] = np.std(v_dict[k])
                if k == 'perf':
                    new_ret.perf = np.mean(v_dict[k])
                else:
                    new_ret.res_util[k] = np.mean(v_dict[k])
            actual_rets.append(new_ret)
        return actual_rets
    
    def forward_class(self, data_list: List[Data]):
        args = [
            ('class', self.class_paths[i], self.cand_devices[i%self.n_dev], data_list) \
                for i in range(self.n_model)
        ]
        rets_list = rl_utils.para_map(single_gnn_eval, args, self.n_model, False)
        assert len(rets_list) == self.n_model
        rets_list = [ret_list[1] for ret_list in rets_list]
        rets = []
        T = self.n_model
        for i in range(len(rets_list[0])):
            new_ret = Result()
            v_dict = dict()
            v_dict['perf'] = np.zeros((T,))
            for t in range(T):
                v_dict['perf'][t] = rets_list[t][i]
            new_ret.class_uncertainty = np.std(v_dict['perf'])
            new_ret.perf = np.mean(v_dict['perf'])
            rets.append(new_ret)
        return rets
    
    def forward(self, reg_data_list: List[Data], class_data_list: List[Data], all_para = False):
        if all_para:
            raise NotImplementedError()
        else:
            reg_rets = self.forward_reg(reg_data_list)
            class_rets = self.forward_class(class_data_list)
            return reg_rets, class_rets
        
    def finetune_class(self, data_list: List[Data], epoch: int):
        class_models = []
        return class_models

def get_edit_dis(p1, p2, acs: ActionSpace):
    ret = 0
    for k, v in p1.items():
        pidx = acs.pids_to_idx[k]
        idx1 = acs.full_action_map[pidx].index(v)
        idx2 = acs.full_action_map[pidx].index(p2[k])
        ret += abs(idx1-idx2)
    return ret