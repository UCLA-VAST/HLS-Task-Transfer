from src.parameter import DesignSpace, DesignPoint, get_default_point
from src.result import Result
from src.dse import GNNModel
from src.config import FLAGS
from src.RL.uncertain import VarEstBase
from src.RL import dse_utils

import copy, random, torch, torch_geometric, time
import numpy as np
import networkx as nx
import torch.multiprocessing as mp
from torch_geometric.data import Data
from typing import List, Dict, Union, Any, Tuple
from tqdm.rich import tqdm

class ActionSpace:
    def __init__(self, ordered_pids: List[str], full_action_map: Dict[int, List[Union[str, int]]]):
        self.ordered_pids = ordered_pids
        self.pids_to_idx = dict()
        for i, pid in enumerate(self.ordered_pids):
            self.pids_to_idx[pid] = i
        self.full_action_map = full_action_map
        self.n_pragma = len(self.ordered_pids)
        self.N = int(0)
        for k,v in self.full_action_map.items():
            self.N += len(v)
        self.prefix_sum = [int(0) for i in range(len(self.ordered_pids)+1)]
        for i in range(len(self.ordered_pids)):
            self.prefix_sum[i+1] = self.prefix_sum[i] + len(self.full_action_map[i])

    @property
    def n(self):
        return self.N

    def dump(self):
        print('=============== Action Space ===============')
        print(f'Action Dim = {self.N}')
        print('Ordered pids:')
        print(self.ordered_pids)
        print('Action Space:')
        _tmp = dict()
        for k, v in self.full_action_map.items():
            _tmp[self.ordered_pids[k]] = v
        print(_tmp)
        print('============================================')

    def rightmost_le(arr: List[int], v: int):
        L, R = 0, len(arr)
        while L <= R:
            mid = (L+R)>>1
            if arr[mid] <= v:
                L = mid + 1
            else:
                R = mid - 1
        return L - 1

    def to_action(self, _id: int):        
        _pid_idx = ActionSpace.rightmost_le(self.prefix_sum, _id)
        base = self.prefix_sum[_pid_idx]
        offset = _id - base
        cur_actions = self.full_action_map[_pid_idx]
        assert offset < len(cur_actions)
        value = cur_actions[offset]
        pid = self.ordered_pids[_pid_idx]
        return pid, value

    def to_id(self, pid: str, value: Union[str, int]):
        _idx = self.pids_to_idx[pid]
        offset = self.full_action_map[_idx].index(value)
        return self.prefix_sum[_idx] + offset
    
    def to_idx_offset(self, pid: str, value: Union[str, int]):
        idx = self.pids_to_idx[pid]
        offset = self.full_action_map[idx].index(value)
        return idx, offset

    def sample(self):
        return random.randint(0, self.N-1)

    def from_ds(ds: DesignSpace, ordered_pids: List[str]) -> 'ActionSpace':
        full_action_map = dict()
        for idx, pid in enumerate(ordered_pids):
            expr = copy.copy(ds[pid].option_expr)
            t = expr.find('if')
            if t != -1:
                #FIXME: handle more robust cases?
                expr = expr[:t]
                expr += ']'
            options = eval(expr, dict())
            full_action_map[idx] = options
        return ActionSpace(ordered_pids, full_action_map)
    
    def _get_pid_idx(self, pid: str):
        return self.ordered_pids.index(pid)
    
    def _get_base(self, idx: int):
        assert isinstance(idx, int)
        return self.prefix_sum[idx]
    
# used as a namespace
class RLZoo:
    def clone_point(point: DesignPoint):
        return dict(point)
    
    def gen_options(ds: DesignSpace, point: DesignPoint, pid: str, default=False) -> List[Union[int, str]]:
        if default:
            dep_values = {dep: point[dep].default for dep in ds[pid].deps}
        else:
            dep_values = {dep: point[dep] for dep in ds[pid].deps}
        options = eval(ds[pid].option_expr, dep_values)
        if options is None:
            print(f'Failed to evaluate {ds[pid].option_expr} with dep {str(dep_values)}')
            print('Error: failed to manipulate design points')
            assert 0
        return options
    
    def is_valid(data: Data):
        L = ['BRAM', 'DSP', 'LUT', 'FF']
        for l in L:
            if data[f'util_{l}'] > 0.8:
                return False
        return True
    
    def get_full_options(expr: str):
        t = expr.find('if')
        if t != -1:
            #FIXME: handle more robust cases?
            expr = expr[:t]
            expr += ']'
        options = eval(expr, dict())
        return options
    
    def validate_value(ds: DesignSpace, point: DesignPoint, pid: str):
        options = RLZoo.gen_options(ds, point, pid)
        value = point[pid]
        if not options:  # All invalid (something not right), set to default
            print(f'No valid options for {pid} with point {str(point)}')
            assert 0
            point[pid] = ds[pid].default
            return False
        if isinstance(value, int):
            # Note that we assume all options have the same type (int or str)
            cand = min(options, key=lambda x: abs(int(x) - int(value)))
            if cand != value:
                point[pid] = cand
                return True
        if value not in options:
            point[pid] = ds[pid].default
            return True
        return False

    def get_next_point(ds: DesignSpace, point: DesignPoint, pid: str, value: Union[int, str], return_changed: bool = False):
        new_point = RLZoo.clone_point(point) # no need for deep copy
        new_point[pid] = value
        changed = None
        if return_changed:
            changed = False
        v_changed = RLZoo.validate_value(ds, new_point, pid)
        if return_changed: changed |= v_changed
        # only need to change children
        for ch in ds[pid].child:
            v_changed = RLZoo.validate_value(ds, new_point, ch)
            if return_changed:
                changed |= v_changed
        if return_changed:
            return new_point, changed
        return new_point
    
    def eval(
        graph: nx.Graph, config: Dict[str, Any], reg_model: GNNModel, class_model: GNNModel, point: DesignPoint, 
        state_type: str, have_uncertainty=False, uncertainty_est: VarEstBase = None, uncertainty_bound: int = None,
        kernel: Tuple[str] = None
    ):
        assert ((not have_uncertainty) or (uncertainty_est is not None and uncertainty_bound is not None))
        return RLZoo.get_results(
            graph, config, reg_model, class_model, [point], state_type, have_uncertainty=have_uncertainty, 
            uncertainty_est=uncertainty_est, uncertainty_bound = uncertainty_bound, kernel=kernel
        )[0]
    
    def parallel_get_results(
        graph: nx.Graph, config: Dict[str, Any], reg_model_list: List[GNNModel], class_model_list: List[GNNModel],
        points_list: List[List[DesignPoint]], state_type: str):
        assert len(reg_model_list) == len(class_model_list)
        assert len(class_model_list) == len(points_list)
        procs = []
        start_method = 'forkserver'
        ctx = mp.get_context(start_method)
        manager = mp.Manager()
        N = len(reg_model_list)
        list_list = [manager.list() for i in range(N)]
        for i in range(N):
            args = (
                list_list[i], graph, config, reg_model_list[i], class_model_list[i], points_list[i], state_type
            )
            proc = ctx.Process(target = RLZoo.get_results_wrap, args = args, daemon=True)
            proc.start()
            procs.append(proc)
        for proc in procs:
            proc.join()
        
    
    #TODO: add cache in GNN model
    def get_results(
        graph: nx.Graph, config: Dict[str, Any], reg_model: GNNModel, class_model: GNNModel, points: List[DesignPoint], 
        state_type: str, prune_invalid=True, have_uncertainty=False, uncertainty_est: VarEstBase = None, 
        uncertainty_bound: int = None, kernel: Tuple[str] = None, return_datalist = False,
        class_datalist = None, reg_datalist = None, redundant=True
    ):
        if not prune_invalid:
            print('[WARNING] Not Adding CLASS MODEL!!!!!!')
        data_list = class_datalist
        if data_list is None:
            data_list = []
            points_enum = points
            # if len(points) > 1000:
            if len(points) > 1:
                points_enum = tqdm(points_enum)
            for point in points_enum:
                data_list.append(dse_utils.apply_design_point(graph, point, 'class', class_model, kernel=kernel, no_point=True, redundant=redundant).to('cpu'))
        test_loader = torch_geometric.data.DataLoader(data_list, batch_size=FLAGS.batch_size)
        rets = [None for i in range(len(points))]
        if prune_invalid:
            valids, uncertainties, class_embeds = class_model.test(
                test_loader, config['evaluate'], mode='class', return_uncertainty=True, return_embed=True
            )
            for i in range(len(points)):
                if valids[i] == 0:
                    new_res = Result('UNAVAILABLE')
                    new_res.class_uncertainty = uncertainties[i]
                    rets[i] = tuple([new_res, class_embeds[i]])
        
        reg_data_list = []
        points_enum = enumerate(points)
        # if len(points) > 2000:
        if len(points) > 1:
            points_enum = enumerate(tqdm(points))
        for idx, point in points_enum:
            if state_type == 'None' and rets[idx] != None:
                continue
            if reg_datalist is not None:
                reg_data_list.append(reg_datalist[idx])
            else:
                reg_data_list.append(dse_utils.apply_design_point(graph, point, 'regression', reg_model, kernel=kernel, no_point=True, redundant=redundant).to('cpu'))
                
        test_loader = torch_geometric.data.DataLoader(reg_data_list, batch_size=FLAGS.batch_size, shuffle=False)
        results, embeds = reg_model.test(test_loader, config['evaluate'], mode='regression', return_embed=True)
        pt = 0
        for i in range(len(points)):
            if rets[i] is None:
                if have_uncertainty:
                    _v = uncertainty_est.estimate(embeds[i]).squeeze().cpu().numpy()
                    if _v > uncertainty_bound:
                        results[i].valid = False
                    results[i].reg_uncertainty = _v
                if state_type == 'embed':
                    rets[i] = tuple([results[i], embeds[i]])
                elif state_type == 'None':
                    rets[i] = tuple([results[pt], None])
                    pt += 1
                else:
                    rets[i] = tuple([results[i], reg_data_list[i]])
            else:
                if state_type == 'embed':
                    pass
                elif state_type == 'None':
                    pass
                else:
                    #TODO: change this
                    rets[i] = tuple([rets[i][0], reg_data_list[i]])
        if return_datalist:
            return rets, reg_data_list, data_list
        return rets
    
    def get_default_st_point(
        ds: DesignSpace, graph: nx.Graph, config: Dict[str, Any], reg_model: GNNModel, class_model: GNNModel, 
        action_space: ActionSpace, state_type: str, is_valid = True, have_uncertainty = False, 
        uncertainty_est: VarEstBase = None, uncertainty_bound: int = None, kernel: Tuple[str] = None
    ):
        st_point = get_default_point(ds)
        st_res, st_state = RLZoo.eval(
            graph, config, reg_model, class_model, st_point, state_type,
            have_uncertainty, uncertainty_est, uncertainty_bound, kernel
        )
        _cnt = 0
        while (st_res.valid ^ is_valid) or ((not is_valid) and st_res.perf != 0.0):
            pid, value = action_space.to_action(action_space.sample())
            st_point = RLZoo.get_next_point(ds, st_point, pid, value)
            st_res, st_state = RLZoo.eval(
                graph, config, reg_model, class_model, st_point, state_type,
                have_uncertainty, uncertainty_est, uncertainty_bound, kernel
            )
            _cnt += 1
            if _cnt > 50:
                _cnt = 0
                st_point = get_default_point(ds)
                st_res, st_state = RLZoo.eval(
                    graph, config, reg_model, class_model, st_point, state_type,
                    have_uncertainty, uncertainty_est, uncertainty_bound, kernel
                )
        return st_point, st_res, st_state
    
    def get_mask_simple(ac_space: ActionSpace, cur_point: DesignPoint, device: torch.device):
        mask = torch.zeros((ac_space.n,), dtype=torch.bool, device=device)
        for k, v in cur_point.items():
            mask[ac_space.to_id(k, v)] = True
        return mask
    
    def embed_onehot(ac_space: ActionSpace, cur_point: DesignPoint):
        mask = np.zeros((ac_space.n,), dtype=np.float32)
        for k, v in cur_point.items():
            mask[ac_space.to_id(k, v)] = 1.
        return mask