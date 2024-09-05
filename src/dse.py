from src.config import FLAGS
from src.saver import saver
from src.utils import MLP, load, get_save_path, argsort, get_root_path, get_src_path, \
    _get_y_with_target, _get_y, dirname
from src.programl_data import print_data_stats, _check_any_in_str, NON_OPT_PRAGMAS, WITH_VAR_PRAGMAS, \
    _in_between, _encode_edge_dict, _encode_edge_torch, _encode_X_torch, create_edge_index, _encode_X_dict, \
    _encode_pragma_per_node
from src.model import Net, MulNet, DomainNet
from src.parameter import DesignSpace, DesignPoint, DesignParameter, get_default_point, topo_sort_param_ids, \
    compile_design_space, gen_key_from_design_point
from src.config_ds import build_config
from src.result import Result
from src.RL import rl_utils

from enum import Enum
import json
import os
from math import ceil, inf, exp, log2
import math
from os.path import join, basename
import time
import torch, pytorch_warmup
from torch_geometric.data import Data, DataLoader
from logging import Logger
from typing import Deque, Dict, List, Optional, Set, Union, Generator, Any
import sys
from tqdm import tqdm
import networkx as nx
from collections import OrderedDict
from glob import glob, iglob
import pickle
from copy import deepcopy
import redis
from subprocess import Popen, DEVNULL, PIPE
import shutil
import numpy as np

import random
from pprint import pprint

TARGET = ['perf', 'util-DSP', 'util-BRAM', 'util-LUT', 'util-FF']

## use the following for perf + DSP + BRAM
SAVE_DIR = join(get_save_path(), FLAGS.dataset,
                f'with-updated-up2-tile-regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF')
## use the following for reasonably good for all except BRAM
SAVE_DIR = join(get_save_path(), FLAGS.dataset,
                f'with-updated-up3-tile-regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF')
## regression for late FPGA'22 and class for DAC'22
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up4-tile-regression_with-invalid_False-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_perfutil-DSPutil-BRAMutil-LUTutil-FF')
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'v20-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(FLAGS.target)}')
# SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset, f'with-invalid_True-normalization_none_no_pragma_False_tag_whole-machsuite_perf')
# SAVE_DIR_CLASS = join(get_save_path(), 'programl-machsuite', f'with-invalid_True-normalization_none_no_pragma_False_tag_whole-machsuite_perf')

# SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset, f'class_with-invalid_True-normalization_const-log2_no_pragma_False_tag_whole-machsuite-poly_perf')
# SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset, f'class_with-invalid_True-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAM')
# SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset, f'with-updated-tile-class_with-invalid_True-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF')
## FPGA'22 class
SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset,
                      f'with-updated-up-tile-class_with-invalid_True-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF')
## DAC'22 class
# SAVE_DIR_CLASS = join(get_save_path(), FLAGS.dataset, f'with-updated-up4-tile-class_with-invalid_True-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_perfutil-DSPutil-BRAMutil-LUTutil-FF')
## GAE
SAVE_DIR = join(
    f'/expr/with-updated-all-data-all-dac-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
SAVE_DIR = join(get_save_path(), FLAGS.dataset,
                'with-updated-all-data-tile-regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF/')


def persist(database, db_file_path) -> bool:
    # pylint:disable=missing-docstring

    dump_db = {
        key: database.hget(0, key)
        for key in database.hgetall(0)
    }
    with open(db_file_path, 'wb') as filep:
        pickle.dump(dump_db, filep, pickle.HIGHEST_PROTOCOL)

    return True


def run_procs(saver, procs, database, kernel, f_db_new):
    saver.info(f'Launching a batch with {len(procs)} jobs')
    try:
        while procs:
            prev_procs = list(procs)
            procs = []
            for p_list in prev_procs:
                text = 'None'
                # print(p_list)
                idx, key, p = p_list
                # text = (p.communicate()[0]).decode('utf-8')
                ret = p.poll()
                # Finished and unsuccessful
                if ret is not None and ret != 0:
                    text = (p.communicate()[0]).decode('utf-8')
                    saver.info(f'Job with batch id {idx} has non-zero exit code: {ret}')
                    saver.debug('############################')
                    saver.debug(f'Recieved output for {key}')
                    saver.debug(text)
                    saver.debug('############################')
                # Finished and successful
                elif ret is not None:
                    text = (p.communicate()[0]).decode('utf-8')
                    saver.debug('############################')
                    saver.debug(f'Recieved output for {key}')
                    saver.debug(text)
                    saver.debug('############################')

                    q_result = pickle.load(open(f'localdse/kernel_results/{kernel}_{idx}.pickle', 'rb'))

                    for _key, result in q_result.items():
                        pickled_result = pickle.dumps(result)
                        if 'lv2' in key:
                            database.hset(0, _key, pickled_result)
                        saver.info(
                            f'Performance for {_key}: {result.perf} with return code: {result.ret_code} and resource utilization: {result.res_util}')
                    if 'EARLY_REJECT' in text:
                        for _key, result in q_result.items():
                            if result.ret_code != 'EARLY_REJECT':
                                result.ret_code = 'EARLY_REJECT'
                                result.perf = 0.0
                                pickled_result = pickle.dumps(result)
                                database.hset(0, _key.replace('lv2', 'lv1'), pickled_result)
                                # saver.info(f'Performance for {key}: {result.perf}')
                    persist(database, f_db_new)
                # Still running
                else:
                    procs.append([idx, key, p])

                time.sleep(1)
    except:
        saver.error(f'Failed to finish the processes')
        raise RuntimeError()


class GNNModel():
    def __init__(self, path, saver, first_dse=False, multi_target=True, task='regression', num_layers=FLAGS.num_layers,
                 D=FLAGS.D, target=FLAGS.target, model_path = None, model_id = 0, model_name=f'{FLAGS.model_tag}_model_state_dict.pth',
                 encoder_name='encoders', pragma_dim=None, device=FLAGS.device, load_parameter=True):
        """
        >>> self.encoder.keys()
        dict_keys(['enc_ntype', 'enc_ptype', 'enc_itype', 'enc_ftype', 'enc_btype', 'enc_ftype_edge', 'enc_ptype_edge'])

        """
        ## up3 regression and up class
        if task == 'class':
            model_name = 'model_state_dict.pth'  # layer: 8, D: 128, up-True
        elif task == 'regression_perf':
            model_name = f'perf_{{FLAGS.model_tag}}_model_state_dict.pth'  ## layer:8, D:64, up3-false

        # if task == 'class': model_name = 'DAC-Trans-JKN-node-att-train_model_state_dict.pth' # layer: 6, D: 64, up4-True
        # elif task == 'regression': model_name = 'Trans-JKN-node-att-train_model_state_dict.pth' # layer: 8, D: 64, up4-False
        self.log = saver
        self.path = path
        self.path = path
        self.device = device
        self.task = task
        # if FLAGS.v2_db:
        #     base_path = 'logs/auto-encoder/task-transfer/all-data-sepPT/**'
        # else:
        if 'hierarchy' in FLAGS.graph_type:
            base_path = 'logs/auto-encoder/hierarchy/**'
        elif 'connected' in FLAGS.graph_type:
            base_path = 'logs/auto-encoder/extended-graph-db/**'
        else:
            base_path = 'logs/auto-encoder/all-data-sepPT/**'    
        model = [f for f in iglob(join(get_src_path(), base_path), recursive=True) if f.endswith('.pth') and 'val' in f and f'gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}' in f and task in f and 'dse' not in f and f'SSL-{FLAGS.SSL}' in f and 'norm' in f and 'attr-True' in f and 'wrong' not in f and f'{num_layers}L' in f and 'range' not in f and 'round8' in f and 'sepPTB-' in f and f'position-{FLAGS.encode_edge_position}' in f and 'epoch10' not in f] # and 'fine-tune' in f and (FLAGS.all_kernels or FLAGS.target_kernel in f)
        if model_path:
            if type(model_path) is list:
                self.model_path = model_path[0]
            else:
                self.model_path = model_path
        else:
            if task == 'regression':
                if FLAGS.sample_finetune:
                    # model = [f for f in iglob(join(get_src_path(), 'logs/dac/spread-ds/**'), recursive=True) if f.endswith('.pth') and FLAGS.target_kernel in f and 'BRAM' not in f]
                    # model = ['/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/with-updated-up4-tile-regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF/Trans-JKN-node-att-train_model_state_dict.pth']
                    ## FPGA'22
                    model = ['/share/atefehSZ/RL/original-software-gnn/software-gnn//save/programl/with-updated-up3-tile-regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF/test_model_state_dict.pth']
                    assert len(model) == 1
                    self.model_path = model[0]
                else:
                    if FLAGS.model_path == None:
                        print(model, FLAGS.gae_T, task, FLAGS.target_kernel)
                        assert len(model) == 1
                        self.model_path = model[0]
                        # self.model_path = join(self.path, model_name)
                    else:
                        if type(FLAGS.model_path) is list:
                            self.model_path = FLAGS.model_path[0]
                        else:
                            self.model_path = FLAGS.model_path
            else:
                if FLAGS.class_model_path == None:
                    # model = [f for f in iglob(join(get_src_path(), base_path), recursive=True) if f.endswith('.pth') and 'val' in f and f'gae-{FLAGS.gae_T}' in f and task in f and 'dse' not in f]
                    assert len(model) == 1
                    self.model_path = model[0]
                    # self.model_path = join(self.path, model_name)
                else:
                    self.model_path = FLAGS.class_model_path

        if FLAGS.encoder_path == None:
            self.encoder_path = join(self.path, encoder_name)
        else:
            self.encoder_path = FLAGS.encoder_path
            
        print('============ GNNModel Init =============')
        print(f'task = {task}')
        print(f'model_path = {self.model_path}')
        print(f'encoder_path = {self.encoder_path}')
        print('========================================')

        shutil.copy(self.model_path, join(saver.logdir, f'{task}-{basename(self.model_path)}'))
        shutil.copy(f'{self.encoder_path}', join(saver.logdir, f'{task}-{basename(self.encoder_path)}.klepto'))

        self.num_features = FLAGS.num_features  # 124
        self.model = Net(in_channels=self.num_features, init_pragma_dict=pragma_dim, task=task, num_layers=num_layers,
                         D=D, target=target).to(self.device)
        # if first_dse:
        #     saver.log_model_architecture(self.model)
        if load_parameter:
            self.model.load_state_dict(torch.load(join(self.model_path), map_location=torch.device('cpu')), strict=True)
        saver.info(f'loaded {self.model_path}')
        self.encoder = load(self.encoder_path)
        self.cache_encode_x = None
        self.cache_encode_node_dict = None
        self.cache_encode_edge = None
        self.cache_pragma_neighbor = None
        self.cache_edge_index = None
        
    def clear_cache(self):
        self.cache_encode_x = None; self.cache_encode_node_dict = None; self.cache_encode_edge = None
        self.cache_pragma_neighbor = None; self.cache_edge_index = None
        pass
        
    def load_parameter(self, model_path: str, verbose=True):
        if verbose:
            print(f'Load parameter from {model_path}')
        self.model.load_state_dict(torch.load(model_path, map_location=torch.device('cpu')), strict=True)
        self.model.eval()
        
    def sparse_encode_pragma_per_node(self, G, point):
        if self.cache_pragma_neighbor is not None:
            sv_pragma_neighbor = dict(self.cache_pragma_neighbor)
        else: sv_pragma_neighbor = None
        pragma_per_node, self.cache_pragma_neighbor = _encode_pragma_per_node(G, point, self.cache_pragma_neighbor, self.device)
        if sv_pragma_neighbor != None:
            assert set(sv_pragma_neighbor.keys()) == set(self.cache_pragma_neighbor.keys())
            for k, v in sv_pragma_neighbor.items():
                assert v == self.cache_pragma_neighbor[k]
        return pragma_per_node
    
    def encode_node(self, g, point: DesignPoint, force_keep_pragma_attribute: bool = False): ## prograML graph
        required_keys = ['X_contextnids', 'X_pragmanids', 'X_pseudonids', 'X_icmpnids', 'X_pragmascopenids', 'X_pragma_per_node']
        if self.cache_encode_x != None:
            node_dict = dict()
            for k in required_keys:
                if k == 'X_pragma_per_node':
                    node_dict[k] = self.sparse_encode_pragma_per_node(g, point)
                else:
                    node_dict[k] = self.cache_encode_node_dict[k].clone()
            X = self.cache_encode_x.clone()
        else:
            node_dict = _encode_X_dict(g, point=point, device=self.device, force_keep_pragma_attribute=force_keep_pragma_attribute)
            enc_ntype = self.encoder['enc_ntype']
            enc_ptype = self.encoder['enc_ptype']
            enc_itype = self.encoder['enc_itype']
            enc_ftype = self.encoder['enc_ftype']
            enc_btype = self.encoder['enc_btype']
            X = _encode_X_torch(node_dict, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype, self.device)
        
        if self.cache_encode_x != None:
            # assert 0
            pass
            # assert torch.allclose(X, self.cache_encode_x)
            # new_pragma_per_node = self.sparse_encode_pragma_per_node(g, point)
            
            # for k, v in node_dict.items():
            #     if k not in set(required_keys): continue
                # print(k, type(v), type(self.cache_encode_node_dict[k]))
                # if k == 'X_pragma_per_node':
                #     assert torch.allclose(new_pragma_per_node, v)
                # else:
                #     assert torch.allclose(self.cache_encode_node_dict[k], v)
        else:
            self.cache_encode_x = X
            self.cache_encode_node_dict = node_dict
        return X, {k: node_dict[k] for k in required_keys}

    def encode_edge(self, g):
        if self.cache_encode_edge != None:
            # assert 0
            edge_attr = self.cache_encode_edge.clone()
        else:
            edge_dict = _encode_edge_dict(g)
            enc_ptype_edge = self.encoder['enc_ptype_edge']
            enc_ftype_edge = self.encoder['enc_ftype_edge']
            edge_attr = _encode_edge_torch(edge_dict, enc_ftype_edge, enc_ptype_edge, self.device)
        if self.cache_encode_edge != None:
            pass
            # assert torch.allclose(edge_attr, self.cache_encode_edge)
        else:
            self.cache_encode_edge = edge_attr

        return edge_attr
    
    def create_edge_index(self, g):
        if self.cache_edge_index != None:
            edge_index = self.cache_edge_index.clone()
        else:
            edge_index = create_edge_index(g, self.device)
        if self.cache_edge_index != None:
            pass
            # assert torch.allclose(self.cache_edge_index, edge_index)
        else:
            self.cache_edge_index = edge_index
        return edge_index

    def perf_as_quality(self, new_result: Result) -> float:
        """Compute the quality of the point by (1 / latency).

        Args:
            new_result: The new result to be qualified.

        Returns:
            The quality value. Larger the better.
        """
        return 1.0 / max(new_result.perf, 1e-4)

    def finte_diff_as_quality(self, new_result: Result, ref_result: Result) -> float:
        """Compute the quality of the point by finite difference method.

        Args:
            new_result: The new result to be qualified.
            ref_result: The reference result.

        Returns:
            The quality value (negative finite differnece). Larger the better.
        """

        def quantify_util(result: Result) -> float:
            """Quantify the resource utilization to a float number.

            util' = 5 * ceil(util / 5) for each util,
            area = sum(2^1(1/(1-util))) for each util'

            Args:
                result: The evaluation result.

            Returns:
                The quantified area value with the range (2*N) to infinite,
                where N is # of resources.
            """

            # Reduce the sensitivity to (100 / 5) = 20 intervals
            utils = [
                5 * ceil(u * 100 / 5) / 100 for k, u in result.res_util.items()
                if k.startswith('util')
            ]

            # Compute the area
            return sum([2.0 ** (1.0 / (1.0 - u)) for u in utils])

        ref_util = quantify_util(ref_result)
        new_util = quantify_util(new_result)

        if (new_result.perf / ref_result.perf) > 1.05:
            # Performance is too worse to be considered
            return -float('inf')

        if new_util == ref_util:
            if new_result.perf < ref_result.perf:
                # Free lunch
                return float('inf')
            # Same util but slightly worse performance, neutral
            return 0

        return -(new_result.perf - ref_result.perf) / (new_util - ref_util)

    def eff_as_quality(self, new_result: Result, ref_result: Result) -> float:
        """Compute the quality of the point by resource efficiency.

        Args:
            new_result: The new result to be qualified.
            ref_result: The reference result.

        Returns:
            The quality value (negative finite differnece). Larger the better.
        """
        if (new_result.perf / ref_result.perf) > 1.05:
            # Performance is too worse to be considered
            return -float('inf')

        area = sum([u for k, u in new_result.res_util.items() if k.startswith('util')])

        return 1 / (new_result.perf * area)
    
    def get_optimizer(self, lr: float, weight_decay: float):
        self.optimizer = torch.optim.Adam(self.model.parameters(), lr = lr, weight_decay = weight_decay)
        self.have_scheduler = False
        # self.scaler = torch.cuda.amp.GradScaler()
        
    def get_lr_scheduler(self, n_steps: int, eta_min: float):
        self.lr_scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(self.optimizer, T_max=n_steps, eta_min=eta_min)
        self.warmup_scheduler = pytorch_warmup.UntunedLinearWarmup(self.optimizer)
        self.have_scheduler = True
        
    def freeze_layers(self, n_gnn_layers: int):
        for name, param in self.model.named_parameters():
            if 'conv_first' in name or any([f'conv_layers.{d}' in name for d in range(n_gnn_layers)]):
                param.requires_grad = False
    
    def freeze_layer_by_name(self, includes: List[str], excludes: List[str]):
        for name, param in self.model.named_parameters():
            mark = True
            for k in includes:
                if k not in name:
                    mark = False; break
            for k in excludes:
                if k in name:
                    mark = False; break
            if mark:
                param.requires_grad = False
                
    def reinit_by_name(self, includes: List[str], excludes: List[str]):
        for name, mod in self.model.named_modules():
            mark = True
            for k in includes:
                if k not in name:
                    mark = False; break
            for k in excludes:
                if k in name:
                    mark = False; break
            if mark: mod.apply(lambda x: x.reset_parameters() if hasattr(x, 'reset_parameters') else x)
            
                
    def unfreeze(self, n_gnn_layers: int):
        for name, param in self.model.named_parameters():
            if 'conv_first' in name or any([f'conv_layers.{d}' in name for d in range(n_gnn_layers)]):
                param.requires_grad = True
    
    def finetune(self, data_loader, epoch, verbose=True, side=None, is_cache=False, u_loader=None, u_iter=None):
        self.model.train()
        if u_loader is not None:
            assert u_iter is not None
        for t in range(epoch):
            # if verbose:
            #     print(f'Running epoch {t}: ', end = '')
            total_loss = 0
            cnt_batch = 0
            total_u_loss = 0
            # if verbose:
            #     data_loader = tqdm(data_loader)
            for data in data_loader:
                if u_loader is not None:
                    try: u_data = next(u_iter)
                    except StopIteration: 
                        u_iter = iter(u_loader)
                        u_data = next(u_iter)
                with torch.autocast(device_type='cuda', dtype=torch.float32):
                    if is_cache: data = tuple([ele.to(self.device) for ele in data])
                    else: data = data.to(self.device)
                    if u_loader is not None: u_data = u_data.to(self.device)
                    if isinstance(self.model, MulNet):
                        assert self.task == 'regression'
                        data_list = []
                        if is_cache: y_list = []
                        if side == None: side=0
                        for i in range(3):
                            if i == side:
                                if is_cache: data_list.append(data[0]); y_list.append(data[1])
                                else: data_list.append(data)
                            else: 
                                data_list.append(None)
                                if is_cache: y_list.append(None)
                        if is_cache: ret_list = self.model.forward_cache(data_list, y_list)
                        else: ret_list = self.model.forward(data_list)
                        loss = ret_list[side][0]
                    elif isinstance(self.model, DomainNet):
                        self.model.update_alpha()
                        out_dict, loss, loss_dict_, gae_loss = self.model.forward_all(data, u_data)
                    else:
                        out_dict, loss, loss_dict_, gae_loss = self.model(data)
                self.optimizer.zero_grad()
                # self.scaler.scale(loss).backward()
                loss.backward()
                self.optimizer.step()
                # self.scaler.step(self.optimizer)
                # self.scaler.update()
                cnt_batch += 1
                # total_loss += self.scaler.scale(loss).data
                total_loss += loss.data
                if isinstance(self.model, DomainNet): total_u_loss += gae_loss.data
                if self.have_scheduler:
                    self.lr_scheduler.step(self.lr_scheduler.last_epoch+1)
                    self.warmup_scheduler.dampen()
            _avg_loss = round(float(total_loss.cpu().numpy())/cnt_batch, 3)
            total_u_loss = torch.tensor(total_u_loss)
            _avg_u_loss = round(float(total_u_loss.cpu().numpy())/cnt_batch, 3)
            if verbose:
                if not isinstance(self.model, DomainNet):
                    print(f'Loss = {_avg_loss}')
                else:
                    _avg_loss = round(_avg_loss-_avg_u_loss, 3)
                    print(f'Loss = {_avg_loss}, AdpLoss = {_avg_u_loss}')
        cur_lr = self.optimizer.param_groups[0]['lr']
        
    def finetune_all(self, iters, loaders, epoch, verbose=True, is_cache=False):
        for t in range(epoch):
            total_loss_list = [0 for i in range(len(iters))]
            sum_extra_loss = 0.
            self.model.train()
            for data0 in loaders[0]:
                data1, data2 = None, None
                try:
                    data1 = next(iters[1])
                except StopIteration:
                    iters[1] = iter(loaders[1])
                    data1 = next(iters[1])
                try:
                    data2 = next(iters[2])
                except StopIteration: 
                    iters[2] = iter(loaders[2])
                    data2 = next(iters[2])
                extra_data = None
                if not is_cache: data_list = [data0, data1, data2]
                else: data_list = [data0[0], data1[0], data2[0]]
                data_list = [data.to(self.device) for data in data_list]
                if is_cache: y_list = [data0[1], data1[1], data2[1]]
                if extra_data is not None: extra_data = extra_data.to(self.device)
                if is_cache: ret_list = self.model.forward_cache(data_list, y_list)
                else: ret_list = self.model.forward(data_list)
                extra_loss = 0
                loss = ret_list[0][0]
                for i in range(1, len(ret_list)):
                    loss += ret_list[i][0]
                loss += extra_loss
                self.optimizer.zero_grad()
                loss.backward()
                self.optimizer.step()
                for i in range(len(ret_list)):
                    total_loss_list[i] += ret_list[i][0].item()
                if isinstance(extra_loss, torch.Tensor): sum_extra_loss += extra_loss.item()
                else: sum_extra_loss += extra_loss
                if self.have_scheduler:
                    self.lr_scheduler.step(self.lr_scheduler.last_epoch+1)
                    self.warmup_scheduler.dampen()
            for i in range(len(loaders)):
                total_loss_list[i] /= len(loaders[0])
            sum_extra_loss /= len(loaders[0])
            if verbose:
                print([np.round(float(ls), decimals=3) for ls in total_loss_list])
        pass
        
            
    def test_accuracy(self, data_loader, return_embed=False, sep_utils=False, verbose=False, side=None, is_cache=False):
        self.model.eval()
        total_loss = 0
        correct = None
        cnt_points = 0
        if return_embed:
            embed_list = []
        if sep_utils:
            perf_loss = 0
            util_dict = {}
        if verbose:
            data_loader = tqdm(data_loader)
        with torch.no_grad():
            for batch in data_loader:
                with torch.autocast(device_type='cuda', dtype=torch.float32):
                    if is_cache:
                        batch = tuple([data.to(self.device) for data in batch])
                    else: batch = batch.to(self.device)
                    if isinstance(self.model, MulNet):
                        assert self.task == 'regression'
                        data_list = []
                        if is_cache: y_list = []
                        if side == None: side=2
                        for i in range(3):
                            if i == side:
                                if is_cache: data_list.append(batch[0]); y_list.append(batch[1])
                                else: data_list.append(batch)
                            else: 
                                data_list.append(None)
                                if is_cache: y_list.append(None)
                        if is_cache: ret_list = self.model.forward_cache(data_list, y_list)
                        else: ret_list = self.model.forward(data_list)
                        if is_cache:
                            total_loss += ret_list[side][0].data * len(batch[0])
                            cnt_points += len(batch[0])
                        else:
                            total_loss += ret_list[side][0].data * len(batch)
                            cnt_points += len(batch)
                            _loss_dict = ret_list[side][1]
                            if sep_utils:
                                for k, v in _loss_dict.items():
                                    if k == 'perf':
                                        continue
                                    if k not in util_dict:
                                        util_dict[k] = v.data * len(batch)
                                    else:
                                        util_dict[k] += v.data * len(batch)
                                perf_loss += _loss_dict['perf'] * len(batch)
                        continue
                    if return_embed:
                        out_dict, out_embed, loss, _loss_dict, gae_loss = self.model.forward(batch, return_embed=return_embed)
                        embed_list.append(out_embed)
                    else:
                        out_dict, loss, _loss_dict, gae_loss = self.model(batch)
                if sep_utils:
                    for k, v in _loss_dict.items():
                        if k == 'perf':
                            continue
                        if k not in util_dict:
                            util_dict[k] = v.data * len(batch)
                        else:
                            util_dict[k] += v.data * len(batch)
                    perf_loss += _loss_dict['perf'] * len(batch)
                total_loss += loss.data * len(batch)
                cnt_points += len(batch)
                if self.task == 'class':
                    _, pred = torch.max(out_dict['perf'], 1)
                    labels = _get_y_with_target(batch, 'perf')
                    if correct == None:
                        correct = torch.sum(pred == labels)
                    else:
                        correct += torch.sum(pred == labels)
        if self.task == 'regression':
            if return_embed:
                return total_loss/cnt_points, torch.concat(embed_list)
            if sep_utils:
                return total_loss/cnt_points, perf_loss/cnt_points, {k: v/cnt_points for k, v in util_dict.items()}
            return total_loss / cnt_points
        elif self.task == 'class':
            if return_embed:
                return total_loss/cnt_points, torch.concat(embed_list)
            return total_loss / cnt_points, correct
        
    def test_uncertainty(self, data_loader):
        self.model.eval()
        if self.task != 'class':
            raise NotImplementedError()
        max_pred = -torch.tensor(float('inf'), device=self.device)
        min_pred = torch.tensor(float('inf'), device=self.device)
        avg_pred = torch.tensor(0., device=self.device)
        incorrect_preds = []
        correct_preds = []
        n_points = 0
        for batch in data_loader:
            batch = batch.to(self.device)
            out_dict, loss, _loss_dict, gae_loss = self.model(batch)
            n_points += len(batch)
            pred, pred_class = torch.max(torch.softmax(out_dict['perf'], 1), 1)
            labels = _get_y_with_target(batch, 'perf')
            pred = 1. - pred
            _incorrect_pred = pred[(pred_class != labels)]
            incorrect_preds.append(_incorrect_pred)
            correct_preds.append(pred[(pred_class == labels)])
            max_pred = torch.maximum(max_pred, torch.max(pred))
            min_pred = torch.minimum(min_pred, torch.min(pred))
            avg_pred += torch.sum(pred)
        avg_pred /= n_points
        return max_pred, min_pred, avg_pred, torch.concat(incorrect_preds), torch.concat(correct_preds)

    def test(
        self, loader, config, mode='regression', dropout=False, return_embed=False, return_last = False, 
        return_uncertainty = False, show_tqdm = False, class_positive = False
    ):
        self.model.eval() if not dropout else self.model.train()
        i = 0
        results: List[Result] = []
        embeds: List[torch.Tensor] = []
        lasts: List[Dict[str, torch.Tensor]] = []
        target_list = FLAGS.target
        if mode == 'class':
            c_list = []
            v_list = []
        if not isinstance(FLAGS.target, list):
            target_list = [FLAGS.target]
        with torch.no_grad():
            if show_tqdm:
                loader = tqdm(loader)
            for data in loader:
                dtype = torch.float16 if self.task == 'class' else torch.float32
                with torch.autocast(device_type='cuda', dtype=torch.float32):
                    data = data.to(self.device)
                    if isinstance(self.model, MulNet):
                        assert self.task == 'regression'
                        data_list = []
                        side=2
                        for i in range(3):
                            if i == side:
                                data_list.append(data)
                            else: data_list.append(None)
                        ret_list = self.model.forward(data_list, no_loss=True)
                        out_dict = ret_list[side][-1]
                        assert not return_embed
                        assert not return_last
                    else:
                        if return_embed:
                            if return_last:
                                out_dict, out_embed, out_last, loss, loss_dict, _ = self.model(data, return_embed, return_last)
                            else:
                                out_dict, out_embed, loss, loss_dict, _ = self.model(data, return_embed)
                        else:
                            if return_last:
                                out_dict, out_last, loss, loss_dict, _ = self.model(data, return_embed, return_last)
                            else:
                                out_dict, loss, loss_dict, _ = self.model(data)
                if mode == 'regression':
                    # This is fast
                    for i in range(len(out_dict['perf'])):
                        curr_result = Result()
                        if hasattr(data[i], 'point'):
                            curr_result.point = data[i].point
                        for target_name in target_list:
                            out = out_dict[target_name]
                            out_value = out[i].item()
                            if target_name == 'perf':
                                curr_result.perf = out_value
                                if FLAGS.encode_log:
                                    curr_result.actual_perf = 2 ** out_value
                                else:
                                    curr_result.actual_perf = out_value
                            elif target_name in curr_result.res_util.keys():
                                curr_result.res_util[target_name] = out_value
                            else:
                                raise NotImplementedError()
                        curr_result.quality = self.perf_as_quality(curr_result)

                        # prune if over-utilizes the board
                        max_utils = config['max-util']
                        utils = {k[5:]: max(0.0, u) for k, u in curr_result.res_util.items() if k.startswith('util-')}
                        # utils['util-LUT'] = 0.0
                        # utils['util-FF'] = 0.0
                        # utils['util-BRAM'] = 0.0
                        if FLAGS.prune_util:
                            curr_result.valid = all(
                                [(utils[res] / FLAGS.util_normalizer) < max_utils[res] for res in max_utils])
                        else:
                            raise NotImplementedError()
                        results.append(curr_result)
                        if return_embed:
                            embeds.append(out_embed[i])
                        if return_last:
                            new_dict = dict()
                            for k, v in out_last.items():
                                new_dict[k] = v[i]
                            lasts.append(new_dict)
                elif mode == 'class':
                    _, pred = torch.max(out_dict['perf'], 1)
                    if not class_positive:
                        val, _ = torch.max(torch.softmax(out_dict['perf'], 1), 1)
                        val = 1. - val
                    else:
                        val = torch.softmax(out_dict['perf'], 1)[:, 1]
                    labels = _get_y_with_target(data, 'perf')
                    if return_uncertainty:
                        assert self.task == 'class'
                        v_list.append(val)
                    c_list.append((pred == labels))
                    if return_embed:
                        embeds.append(out_embed)
                else:
                    raise NotImplementedError()
                
        if mode == 'class':
            if return_embed:
                if return_uncertainty:
                    return torch.concat(c_list), torch.concat(v_list), torch.concat(embeds)
                return torch.concat(c_list), torch.concat(embeds)
            if return_uncertainty:
                return torch.concat(c_list), torch.concat(v_list)
            return torch.concat(c_list)

        if return_embed:
            if return_last:
                return results, embeds, lasts
            return results, embeds
        if return_last:
            return results, lasts
        return results


class Explorer():
    def __init__(self, path_kernel: str, kernel_name: str, path_graph: str, first_dse: bool = False,
                 run_dse: bool = True, prune_invalid=False, pragma_dim=None, device=FLAGS.device):
        """Constructor.

        Args:
            ds: DesignSpace
        """
        self.run_dse = run_dse
        self.log = saver
        self.kernel_name = kernel_name
        self.config_path = join(path_kernel, f'{kernel_name}_ds_config.json')
        self.config = self.load_config()
        self.device = device

        
        if FLAGS.separate_T and FLAGS.pragma_uniform_encoder:
            if FLAGS.v2_db: pragma_dim = load(join(dirname(FLAGS.encoder_path), 'v20_pragma_dim'))
            else: pragma_dim = load(join(dirname(FLAGS.encoder_path), 'v18_pragma_dim'))
            for gname in pragma_dim:
                self.max_pragma_length = pragma_dim[gname][1] ## it's a list of [#pragma per kernel, max #pragma for all kernels]
                break

        # self.timeout = self.config['timeout']['exploration']
        # self.timeout = float(inf)
        self.timeout = 600 * 60
        self.hls_timeout = 40
        self.ds, self.ds_size = compile_design_space(
            self.config['design-space']['definition'],
            None,
            self.log)

        self.batch_size = 1
        # Status checking
        self.num_top_designs = 10
        self.key_perf_dict = OrderedDict()
        self.best_results_dict = {}
        self.best_result: Result = Result()
        self.explored_point = 0
        self.ordered_pids = self.topo_sort_param_ids(self.ds)
        self.ensemble_GNNmodels = []
        # self.ordered_pids = FLAGS.ordered_pids

        if FLAGS.ensemble > 1: ## number of models in ensemble, if 1, not ensemble
            for i in range(FLAGS.ensemble):
                model_path = FLAGS.model_path[i]
                model = GNNModel(
                    SAVE_DIR, self.log, first_dse = first_dse, multi_target=True, task='regression', 
                    num_layers = FLAGS.num_layers, D = FLAGS.D, model_path=model_path, model_id=i, 
                    pragma_dim = pragma_dim, device = self.device
                )
                self.ensemble_GNNmodels.append(model)
        else:
            self.GNNmodel = GNNModel(
                SAVE_DIR, self.log, first_dse = first_dse, multi_target=True, task='regression', 
                num_layers = FLAGS.num_layers, D = FLAGS.D, pragma_dim = pragma_dim, device=self.device
            )
            self.ensemble_GNNmodels.append(self.GNNmodel)


        if FLAGS.graph_type == '':
            pruner = 'extended'
            gexf_file = sorted([f for f in iglob(path_graph + "/**/*", recursive=True) if f.endswith('.gexf') and f'{kernel_name}_' in f and pruner not in f])
        else:
            gexf_file = sorted([f for f in glob(path_graph + "/**/*") if f.endswith('.gexf') and f'{kernel_name}_' in f and FLAGS.graph_type in f])
        print('Graph file path =', gexf_file)
        # print(gexf_file, glob(path_graph))
        assert len(gexf_file) == 1
        # self.graph_path = join(path_graph, f'{kernel_name}_processed_result.gexf')
        self.graph_path = join(path_graph, gexf_file[0])
        self.graph = nx.read_gexf(self.graph_path)
        # dzj: !!!!!!! removing edges
        # print('[WARNING] removing edges')
        # self.graph = nx.convert_node_labels_to_integers(self.graph)
        # vis_edge = set()
        # es = list(self.graph.edges)
        # cnt_remove = 0
        # for idx, e in enumerate(es):
        #     if len(e) == 3:
        #         if e[0:2] in vis_edge:
        #             # print(f'Remove {e[0]}, {e[1]}, {e[2]}')
        #             print(idx)
        #             self.graph.remove_edge(e[0], e[1])
        #             cnt_remove += 1
        #         else:
        #             vis_edge.add(e[0:2])
        # if cnt_remove > 0:
        #     print(f'[WARNING] remove {cnt_remove} edge')

        self.prune_invalid = prune_invalid
        if self.prune_invalid:
            ## FPGA'22
            # self.GNNmodel_valid = GNNModel(SAVE_DIR_CLASS, self.log, multi_target=False, task='class', num_layers = 8, D = 128)
            ## DAC'22
            self.GNNmodel_valid = GNNModel(SAVE_DIR, self.log, multi_target=False, task='class',
                                           num_layers=FLAGS.num_layers, D=FLAGS.D, pragma_dim=pragma_dim, device=self.device)  # 6, 64
            #### prev class config ####
            # self.GNNmodel_valid = GNNModel(SAVE_DIR_CLASS, self.log, multi_target=False, task='class', num_layers = 8, D = 64)

    def load_config(self) -> Dict[str, Any]:
        """Load the DSE configurations.

        Returns:
            A dictionary of configurations.
        """

        try:
            if not os.path.exists(self.config_path):
                self.log.error(('Config JSON file not found: %s', self.config_path))
                raise RuntimeError()

            self.log.info('Loading configurations')
            with open(self.config_path, 'r', errors='replace') as filep:
                try:
                    user_config = json.load(filep)
                except ValueError as err:
                    self.log.error(('Failed to load config: %s', str(err)))
                    raise RuntimeError()

            config = build_config(user_config, self.log)
            if config is None:
                self.log.error(('Config %s is invalid', self.config_path))
                raise RuntimeError()
        except RuntimeError:
            sys.exit(1)

        return config

    def get_pragmas(self, point: DesignPoint) -> List[int]:
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
    
    def apply_design_point(self, g, point: DesignPoint, mode = 'regression', model=None, force_keep_pragma_attribute=False) -> Data:
        if model is None: model = self.GNNmodel
        X, d_node = model.encode_node(g, point, force_keep_pragma_attribute=force_keep_pragma_attribute)
        edge_attr = model.encode_edge(g)
        edge_index = model.create_edge_index(g)
        pragmas = self.get_pragmas(point)
        if FLAGS.separate_T and FLAGS.pragma_uniform_encoder:
            pragmas.extend([0] * (self.max_pragma_length - len(pragmas)))

        # d_node = dict()
        resources = ['BRAM', 'DSP', 'LUT', 'FF']
        keys = ['perf', 'actual_perf', 'quality']
        d_node['pragmas'] = torch.FloatTensor(np.array([pragmas]))
        # d_node['X_contextnids'] = X_contextnids
        # d_node['X_pragmanids'] = X_pragmanids
        # d_node['X_pseudonids'] = X_pseudonids
        # d_node['X_icmpnids'] = X_icmpnids
        for r in resources:
            keys.append('util-' + r)
            keys.append('total-' + r)
        for key in keys:
            d_node[key] = 0
        if mode == 'class':  ## default: point is valid
            d_node['perf'] = 1

        if 'regression' in mode:
            data = Data(
                X_contextnids=d_node['X_contextnids'],
                X_pragmanids=d_node['X_pragmanids'],                    
                X_pragmascopenids=d_node['X_pragmascopenids'],                    
                X_pseudonids=d_node['X_pseudonids'],    
                X_icmpnids=d_node['X_icmpnids'],    
                X_pragma_per_node=d_node['X_pragma_per_node'],                   
                x=X,
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
        elif 'class' in mode:
            data = Data(
                x=X,
                edge_index=edge_index,
                pragmas=d_node['pragmas'],
                perf=d_node['perf'],
                edge_attr = edge_attr,
                point = point,
                X_contextnids=d_node['X_contextnids'],
                X_pragmanids=d_node['X_pragmanids'],                    
                X_pragmascopenids=d_node['X_pragmascopenids'],                    
                X_pseudonids=d_node['X_pseudonids'],    
                X_icmpnids=d_node['X_icmpnids'],    
                X_pragma_per_node=d_node['X_pragma_per_node']
            )
        else:
            raise NotImplementedError()

        return data

    def update_best(self, result: Result) -> None:
        """Keep tracking the best result found in this explorer.

        Args:
            result: The new result to be checked.

        """
        # if result.valid and result.quality > self.best_result.quality:
        if 'speedup' in FLAGS.norm_method:
            REF = min
        else:
            REF = max
        if self.key_perf_dict:
            key_refs_perf = REF(self.key_perf_dict, key=(lambda key: self.key_perf_dict[key]))
            refs_perf = self.key_perf_dict[key_refs_perf]
        else:
            if REF == min:
                refs_perf = float(-inf)
            else:
                refs_perf = float(inf)
        point_key = gen_key_from_design_point(result.point)
        if point_key not in self.key_perf_dict and result.valid and REF(result.perf,
                                                                        refs_perf) != result.perf:  # if the new result is better than the references designs
            ## use the below condition when all the perf numbers are the same, such as for aes
            # if result.valid and (REF(result.perf, refs_perf) != result.perf or refs_perf == result.perf): # if the new result is better than the references designs
            # if result.valid and (not self.key_perf_dict or self.key_perf_dict[max(self.key_perf_dict, key=(lambda key: self.key_perf_dict[key]))] < result.perf): # if the new result is better than the references designs
            self.best_result = result
            # self.log.info(('Found a better result at {}: Quality {:.1e}, Perf {:.1e}'.format(
            #     self.explored_point, result.quality, result.perf)))
            if len(self.key_perf_dict.keys()) >= self.num_top_designs:
                ## replace maxmimum performance value
                key_refs_perf = REF(self.key_perf_dict, key=(lambda key: self.key_perf_dict[key]))
                self.best_results_dict.pop((self.key_perf_dict[key_refs_perf], key_refs_perf))
                self.key_perf_dict.pop(key_refs_perf)

            attrs = vars(result)
            # self.log.info(', '.join("%s: %s" % item for item in attrs.items()))

            self.key_perf_dict[point_key] = result.perf
            self.best_results_dict[(result.perf, point_key)] = result

        if self.key_perf_dict.values():
            reward = REF([-p for p in self.key_perf_dict.values()])
            return reward
        else:
            return 0

    def gen_options(self, point: DesignPoint, pid: str, default=False) -> List[Union[int, str]]:
        """Evaluate available options of the target design parameter.

        Args:
            point: The current design point.
            pid: The target design parameter ID.

        Returns:
            A list of available options.
        """
        if default:
            dep_values = {dep: point[dep].default for dep in self.ds[pid].deps}
        else:
            dep_values = {dep: point[dep] for dep in self.ds[pid].deps}
        options = eval(self.ds[pid].option_expr, dep_values)
        if options is None:
            self.log.error(f'Failed to evaluate {self.ds[pid].option_expr} with dep {str(dep_values)}')
            print('Error: failed to manipulate design points')
            sys.exit(1)

        return options

    def get_order(self, point: DesignPoint, pid: str) -> int:
        """Evaluate the order of the current value.

        Args:
            point: The current design point.
            pid: The target design parameter ID.

        Returns:
            The order.
        """

        if not self.ds[pid].order:
            return 0

        order = eval(self.ds[pid].order['expr'], {self.ds[pid].order['var']: point[pid]})
        if order is None or not isinstance(order, int):
            self.log.warning(f'Failed to evaluate the order of {pid} with value {str(point[pid])}: {str(order)}')
            return 0

        return order

    def update_child(self, point: DesignPoint, pid: str) -> None:
        """Check values of affected parameters and update them in place if it is invalid.

        Args:
            point: The current design point.
            pid: The design parameter ID that just be changed.
        """

        pendings = [child for child in self.ds[pid].child if self.validate_value(point, child)]
        for child in pendings:
            self.update_child(point, child)

    def validate_point(self, point: DesignPoint) -> bool:
        """Check if the current point is valid and set it to the closest value if not.

        Args:
            point: The current design point.
            pid: The design parameter ID that just be changed.

        Returns:
            True if the value is changed.
        """

        changed = False
        for pid in point.keys():
            options = self.gen_options(point, pid)
            value = point[pid]
            if not options:  # All invalid (something not right), set to default
                assert 0, 'Should not happen'
                self.log.warning(f'No valid options for {pid} with point {str(point)}')
                point[pid] = self.ds[pid].default
                changed = True
                continue

            if isinstance(value, int):
                # Note that we assume all options have the same type (int or str)
                cand = min(options, key=lambda x: abs(int(x) - int(value)))
                if cand != value:
                    point[pid] = cand
                    changed = True
                    continue

            if value not in options:
                point[pid] = self.ds[pid].default
                changed = True
                continue

        return changed

    def validate_value(self, point: DesignPoint, pid: str) -> bool:
        """Check if the current value is valid and set it to the closest value if not.

        Args:
            point: The current design point.
            pid: The design parameter ID that just be changed.

        Returns:
            True if the value is changed.
        """

        options = self.gen_options(point, pid)
        value = point[pid]
        if not options:  # All invalid (something not right), set to default
            self.log.warning(f'No valid options for {pid} with point {str(point)}')
            point[pid] = self.ds[pid].default
            return False

        if isinstance(value, int):
            # Note that we assume all options have the same type (int or str)
            cand = min(options, key=lambda x: abs(int(x) - int(value)))
            if cand != value:
                point[pid] = cand
                return True

        if value not in options:
            point[pid] = self.ds[pid].default
            return True
        return False

    def move_by(self, point: DesignPoint, pid: str, step: int = 1) -> int:
        """Move N steps of pid parameter's value in a design point in place.

        Args:
            point: The design point to be manipulated.
            pid: The target design parameter.
            step: The steps to move. Note that step can be positive or negatie,
                  but we will not move cirulatory even the step is too large.

        Returns:
            The actual move steps.
        """

        try:
            options = self.gen_options(point, pid)
            idx = options.index(point[pid])
        except (AttributeError, ValueError) as err:
            self.log.error(
                f'Fail to identify the index of value {point[pid]} of parameter {pid} at design point {str(point)}: {str(err)}')
            print('Error: failed to manipulate design points')
            sys.exit(1)

        target = idx + step
        if target >= len(options):
            target = len(options) - 1
        elif target < 0:
            target = 0

        if target != idx:
            point[pid] = options[target]
            self.update_child(point, pid)
        return target - idx

    def get_results(self, next_points: List[DesignPoint]) -> List[Result]:
        data_list = []
        model = None
        if FLAGS.ensemble > 1:
            model = self.ensemble_GNNmodels[0]
        if self.prune_invalid:
            for point in next_points:
                data_list.append(self.apply_design_point(self.graph, point, mode = 'class', model=model))

            test_loader = DataLoader(data_list, batch_size=self.batch_size)  # TODO
            valid = self.GNNmodel_valid.test(test_loader, self.config['evaluate'], mode='class')
            if valid == 0:
                # stop if the point is invalid
                # self.log.debug(f'invalid point {point}')
                # res = Result()
                # res.perf = float('inf')
                # return [res]  # TODO: add batch processing
                return [float('inf')]

        data_list = []
        for point in next_points:
            data_list.append(self.apply_design_point(self.graph, point))

        test_loader = DataLoader(data_list, batch_size=self.batch_size)  # TODO
        if FLAGS.ensemble > 1:
            all_results = [model.test(test_loader, self.config['evaluate'], mode='regression')[0] for model in self.ensemble_GNNmodels]
            cur_res = all_results[0]
            max_utils = self.config['evaluate']['max-util']
            utils = None
            perf = 0
            # for curr_result in all_results:
            for i in range(FLAGS.ensemble):
                curr_result = all_results[i]
                curr_utils = {k: max(0.0, u) for k, u in curr_result.res_util.items()}
                if FLAGS.ensemble_weights != None:
                    assert len(FLAGS.ensemble_weights) == FLAGS.ensemble
                    curr_utils = {k: max(0.0, u * FLAGS.ensemble_weights[i]) for k, u in curr_result.res_util.items()}
                    curr_result.perf *= FLAGS.ensemble_weights[i]
                if utils is None:
                    utils = curr_utils
                else:
                    for k, u in utils.items():
                        utils[k] = u + curr_utils[k]
                perf += (curr_result.perf)
                # saver.debug(f'new model')
                # saver.debug(curr_result.res_util)
                # saver.debug(curr_result.perf)

            if FLAGS.ensemble_weights == None:
                utils = {k: u / len(self.ensemble_GNNmodels) for k, u in utils.items()}
                perf = perf / len(self.ensemble_GNNmodels)
            cur_res.res_util = utils
            cur_res.perf = perf 
            # saver.debug(f'resource and perf final')
            # saver.debug(cur_res.res_util)
            # saver.debug(cur_res.perf)
            if FLAGS.prune_util:
                # cur_res.valid = all([(utils[f'util-{res}'] / FLAGS.util_normalizer )< max_utils[res] for res in max_utils])
                cur_res.valid = all([(utils[f'util-{res}'] / FLAGS.util_normalizer )< 0.7 for res in max_utils])
            results = [cur_res]
        else:
            results = self.GNNmodel.test(test_loader, self.config['evaluate'], mode='regression')
        
        return results

    def get_hls_results(self, points: List[DesignPoint], database, f_db) -> List[Result]:
        ## TODO: assumes single HLS run
        procs = []
        batch_num = 1
        batch_id = 0
        src_dir = join(get_root_path(), 'dse_database/save/merlin_prj', f'{self.kernel_name}', 'xilinx_dse')
        work_dir = join('/expr', f'{self.kernel_name}', 'work_dir')
        for point in points:
            if len(procs) == batch_num:
                run_procs(saver, procs, database, self.kernel_name, f_db_new)
                batch_id == 0
                procs = []
            for key_, value in point.items():
                if type(value) is str or type(value) is int:
                    point[key_] = value
                else:
                    point[key_] = value.item()
            key = f'lv2:{gen_key_from_design_point(point)}'

            kernel = self.kernel_name
            f_config = self.config_path
            with open(f'./localdse/kernel_results/{self.kernel_name}_point_{batch_id}.pickle', 'wb') as handle:
                pickle.dump(point, handle, protocol=pickle.HIGHEST_PROTOCOL)
            new_work_dir = join(work_dir, f'batch_id_{batch_id}')
            p = Popen(
                f'cd {get_src_path()} \n source /share/atefehSZ/env.sh \n /share/atefehSZ/merlin_docker/docker-run-gnn.sh single {src_dir} {new_work_dir} {kernel} {f_config} {batch_id} {self.hls_timeout}',
                shell=True, stdout=PIPE)

            # if batch_id < batch_num:
            procs.append([batch_id, key, p])
            saver.info(f'Added {point} with batch id {batch_id}')
            batch_id += 1

        if len(procs) > 0:
            run_procs(saver, procs, database, self.kernel_name, f_db)

        pickle_obj = database.hget(0, f'lv2:{gen_key_from_design_point(point)}')
        return pickle.loads(pickle_obj)

    def topo_sort_param_ids(self, space: DesignSpace) -> List[str]:
        return topo_sort_param_ids(space)

    def traverse(self, point: DesignPoint, idx: int) -> Generator[DesignPoint, None, None]:
        """DFS traverse the design space and yield leaf points.

        Args:
            point: The current design point.
            idx: The current manipulated parameter index.

        Returns:
            A resursive generator for traversing.
        """

        if idx == len(self.ordered_pids):
            # Finish a point
            yield point
        else:
            yield from self.traverse(point, idx + 1)

            # Manipulate idx-th point
            new_point = self.clone_point(point)
            while self.move_by(new_point, self.ordered_pids[idx]) == 1:
                yield from self.traverse(new_point, idx + 1)
                new_point = self.clone_point(new_point)

    @staticmethod
    def clone_point(point: DesignPoint) -> DesignPoint:
        return dict(point)

    def run(self) -> None:
        """The main function of the explorer to launch the search algorithm.

        Args:
            algo_name: The corresponding algorithm name for running this exploration.
            algo_config: The configurable values for the algorithm.
        """
        raise NotImplementedError()

def print_logs(f, logs: List[str]):
    f.write('\n'.join(logs))
    f.write('\n')
    for idx, log in enumerate(logs):
        print(log, flush=(idx==len(logs)-1))

class ExhaustiveExplorer(Explorer):
    def __init__(self, path_kernel: str, kernel_name: str, path_graph: str, param: Dict[str, Any], first_dse: bool = False,
                 run_dse: bool = True, prune_invalid=FLAGS.prune_class, point: DesignPoint = None, 
                 pragma_dim=None, timeout: int = 60*60, device = FLAGS.device):
        """Constructor.

        Args:
            ds: Design space.
        """
        super(ExhaustiveExplorer, self).__init__(path_kernel, kernel_name, path_graph,
                                                 first_dse, run_dse, prune_invalid, pragma_dim, device)
        self.batch_size = 1
        self.log.info('Done init')
        self.log_path = param['log_path']
        self.param = param
        self.timeout = timeout
        if 'num_top_designs' in self.param:
            self.num_top_designs = self.param['num_top_designs']
            
        if 'real_reg_model_path' in param:
            print('Load new regression parameter')
            self.GNNmodel.load_parameter(param['real_reg_model_path'])
        
        if 'real_class_model_path' in param:
            assert prune_invalid
            print('Load new classification parameter')
            if prune_invalid: self.GNNmodel_valid.load_parameter(param['real_class_model_path'])

        if 'reg_model' in param:
            print('Change regression model')
            self.GNNmodel.model = param['reg_model']
        
        if 'class_model' in param:
            assert prune_invalid
            print('Change classification model')
            self.GNNmodel_valid.model = param['class_model']

        if prune_invalid:
            if not ('class_model' in param or 'real_class_model_path' in param):
                print('[WARNING] not loading any new model!!!')
        
        # print(self.ordered_pids)
        if not os.path.exists(self.log_path.format('')):
            os.makedirs(self.log_path.format(''))
        with open(param['log_path'].format(f'1.log'), 'w') as f:
            pass
        if self.run_dse:
            self.result_buffer = []
            self.run()
            attrs = vars(self.best_result)
            self.log.info('Best Results Found:')
            i = 1
            with open(join(saver.logdir, f'{kernel_name}.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
            for _, result in sorted(self.best_results_dict.items()):
                attrs = vars(result)
                self.log.info(f'Design {i}')
                self.log.info(', '.join("%s: %s" % item for item in attrs.items()))
                i += 1
            log_path = self.log_path
            with open(log_path.format(f'best_design.log'), 'w') as f:
                i = 0
                for _, result in sorted(self.best_results_dict.items(), reverse=True):
                    attrs = vars(result)
                    f.write(f'Design {i}: \n')
                    f.write(', '.join("%s: %s" % item for item in attrs.items()))
                    f.write('\n')
                    i += 1
            with open(log_path.format(f'{self.kernel_name}_best.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
        else:
            has_changed = self.validate_point(point)
            assert not has_changed, 'Should not happen'
            results = self.get_results([point])
            attrs = vars(results[0])
            self.log.info(', '.join("%s: %s" % item for item in attrs.items()))

    def gen(self) -> Generator[List[DesignPoint], Optional[Dict[str, Result]], None]:
        # pylint:disable=missing-docstring

        self.log.info('Launch exhaustive search algorithm')

        traverser = self.traverse(get_default_point(self.ds), 0)
        iter_cnt = 0
        while True:
            next_points: List[DesignPoint] = []
            try:
                iter_cnt += 1
                self.log.debug(f'Iteration {iter_cnt}')
                while len(next_points) < self.batch_size:
                    next_points.append(next(traverser))
                    self.log.debug(f'Next point: {str(next_points[-1])}')
                yield next_points
            except StopIteration:
                if next_points:
                    yield next_points
                break

        self.log.info('No more points to be explored, stop.')
        
    def log_best_perf(self):
        for _, result in sorted(self.best_results_dict.items(), reverse=True):
            self.log.info(f'Current best perf: {result.perf}')
            break
    
    def log_best_designs(self):
        i = 0
        self.log.info(f'Current best designs:')
        for _, result in sorted(self.best_results_dict.items(), reverse=True):
            attrs = vars(result)
            self.log.info(f'Design {i}')
            self.log.info(', '.join("%s: %s" % item for item in attrs.items()))
            i += 1

    def run(self) -> None:
        # pylint:disable=missing-docstring

        # Create a search algorithm generator
        gen_next = self.gen()

        timer = time.time()
        duplicated_iters = 0
        # while (time.time() - timer) < self.timeout and self.explored_point < 75000:
        while time.time()-timer < self.timeout and self.explored_point < 75000:
            try:
                # Generate the next set of design points
                next_points = next(gen_next)
                self.log.debug(f'The algorithm generates {len(next_points)} design points')
            except StopIteration:
                break

            results = self.get_results(next_points)
            for r in results:
                if isinstance(r, Result):
                    self.result_buffer.append(r)
                    attrs = vars(r)
                    self.log.debug(f'Evaluating Design')
                    self.log.debug(', '.join("%s: %s" % item for item in attrs.items()))
                    self.update_best(r)

            # if self.explored_point % 500 == 0:
            #     self.log_best_perf()
            # if self.explored_point % 5000 == 0:
            #     self.log_best_designs()
                
            self.explored_point += len(results)
            if self.explored_point % 1000 == 0:
                with open(self.log_path.format('1.log'), 'a') as f:
                    for _, result in sorted(self.best_results_dict.items(), reverse=True):
                        print_logs(f, [
                            f'Current Best: {result.perf}',
                            f'Explored point: {self.explored_point}',
                            f'Elapsed: {round(time.time()-timer, 2)}'
                        ])
                        break
            if self.explored_point % 10000 == 0:
                num_iter = self.explored_point / 10000
                if not os.path.exists(self.log_path.format(num_iter)):
                    os.makedirs(self.log_path.format(num_iter))
                    with open(self.log_path.format(f'{num_iter}/designs.log'), 'w') as f:
                        i = 0
                        for _, result in sorted(self.best_results_dict.items(), reverse=True):
                            attrs = vars(result)
                            f.write(f'Design {i}: \n')
                            f.write(', '.join("%s: %s" % item for item in attrs.items()))
                            f.write('\n')
                            i += 1
                    with open(self.log_path.format(f'{num_iter}/{self.kernel_name}_best.pickle'), 'wb') as handle:
                        pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                        handle.flush()
        self.log.info(f'Explored {self.explored_point} points')


class GeneticExplorer(Explorer):
    def __init__(self, path_kernel: str, kernel_name: str, path_graph: str, param: Dict[str, Any], first_dse: bool = False,
                 run_dse: bool = True, prune_invalid=FLAGS.prune_class, point: DesignPoint = None, 
                 pragma_dim=None, timeout: int = 60*60, device=FLAGS.device
    ):
        """Constructor.

        Args:
            ds: Design space.
        """
        super(GeneticExplorer, self).__init__(path_kernel, kernel_name, path_graph, first_dse, run_dse, prune_invalid,
                                              pragma_dim, device)
        if 'real_reg_model_path' in param:
            print('Load new regression parameter')
            self.GNNmodel.load_parameter(param['real_reg_model_path'])
        
        if 'real_class_model_path' in param:
            assert prune_invalid
            print('Load new classification parameter')
            if prune_invalid: self.GNNmodel_valid.load_parameter(param['real_class_model_path'])

        self.batch_size = 1
        self.sorted_params = sorted(list(self.ds.keys()))
        self.population_size = 200
        self.parents_ratio = 0.4
        self.num_parents = int(self.population_size * self.parents_ratio)
        self.num_children = self.population_size - self.num_parents
        self.mutation_probability = 0.2
        self.initialize_population()
        self.log.info('Done init')
        self.log_path = param['log_path']
        self.param = param
        self.timeout = timeout
        
        if not os.path.exists(self.log_path.format('')):
            os.makedirs(self.log_path.format(''))
        with open(self.log_path.format('1.log'), 'w') as f:
            pass

        if self.run_dse:
            self.run()
            self.log.info('Best Results Found:')
            i = 1
            with open(join(saver.logdir, f'{kernel_name}.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
            for _, result in sorted(self.best_results_dict.items()):
                attrs = vars(result)
                self.log.info(f'Design {i}')
                self.log.info(', '.join("%s: %s" % item for item in attrs.items()))
                i += 1
            log_path = self.log_path
            with open(log_path.format(f'best_design.log'), 'w') as f:
                i = 0
                for _, result in sorted(self.best_results_dict.items(), reverse=True):
                    attrs = vars(result)
                    f.write(f'Design {i}: \n')
                    f.write(', '.join("%s: %s" % item for item in attrs.items()))
                    f.write('\n')
                    i += 1
            with open(log_path.format(f'{self.kernel_name}_best.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
        else:
            results = self.get_results([point])
            attrs = vars(results[0])
            self.log.info(', '.join("%s: %s" % item for item in attrs.items()))

    def point2vector(self, point: DesignPoint) -> List[str]:
        return [point[p] for p in self.sorted_params]

    def vector2point(self, v_point: List[str]) -> DesignPoint:
        return {p: v for p, v in zip(self.sorted_params, v_point)}

    def initialize_population(self) -> List[List[str]]:
        # sampled_points = [[None] * len(self.sorted_params)] * self.population_size
        sampled_points = []
        self.population_size = min(self.population_size, self.ds_size)
        sampled_idx = random.sample(range(min(10 * self.population_size, self.ds_size)), min(self.population_size, self.ds_size))
        traverser = self.traverse(get_default_point(self.ds), 0)

        for i in range(max(sampled_idx) + 1):
            point = next(traverser)
            if i in sampled_idx:
                sampled_points.append(point)

        assert len(sampled_points) == self.population_size
        self.population = [self.point2vector(p) for p in sampled_points]

    def fitness_function(self, solution: List[str]) -> Result:
        return (self.get_results([self.vector2point(solution)])[0])

    def crossover(self, parents: List[List[str]], distinct=FLAGS.dist_child) -> List[List[str]]:
        """ Perform single-point crossover.
        """
        children = []

        start_time = time.time()
        time_limit = 1
        iter = 1
        while (time.time() - start_time) < time_limit * 60.0 and len(children) < self.num_children:
            # for i in range(self.num_children):
            sampled_parents = random.sample(parents, 2)
            gene_id = random.randrange(0, len(self.sorted_params) - 1, 1)
            # gene_id = (len(self.sorted_params) + 1) // 2
            child = []
            for m in range(len(self.sorted_params)):
                if m < gene_id:
                    child.append(sampled_parents[0][m])
                else:
                    child.append(sampled_parents[1][m])
            point = self.vector2point(child)

            # saver.info(f'iter={iter} -> gene: {gene_id} with parents {sampled_parents[0]} and {sampled_parents[1]}')
            # saver.info(f'child: {point}')
            changed = self.validate_point(point)
            # if changed:
            #     saver.info(f'validated child: {point}\n')
            if distinct:
                if self.point2vector(point) not in children and self.point2vector(point) not in parents:
                    children.append(self.point2vector(point))
            else:
                children.append(self.point2vector(point))
            iter += 1
        # saver.info(f'iter={iter}')

        return children

    def mutation(self, children: List[List[str]]) -> List[List[str]]:
        """ Perform mutation.
        """
        # pprint(children)
        for i in range(len(children)):
            if random.random() < self.mutation_probability:
                gene_id = random.randrange(0, len(self.sorted_params), 1)
                point = self.vector2point(children[i])
                self.move_by(point, self.sorted_params[gene_id])
                self.validate_value(point, self.sorted_params[gene_id])
                children[i] = self.point2vector(point)
                # saver.log_info(f'child {i} mutated to {children[i]}')

        # pprint(children)
        return children

    def select_parents(self, population: List[List[str]], fitness: List[float], distinct=FLAGS.dist_parent) -> List[
        List[str]]:
        """ Select "num_parents" parents with the highest fitness score.
        """
        # fitness = [self.fitness_function(p) for p in population]
        fitness_idx_sorted = argsort([-f for f in fitness])
        self.num_parents = int(self.population_size * self.parents_ratio)

        if distinct:
            parents = []
            for idx in fitness_idx_sorted:
                if idx < len(population) and population[idx] not in parents:
                    parents.append(population[idx])
                if len(parents) == self.num_parents:
                    break
            self.num_parents = len(parents)
            self.num_children = self.population_size - self.num_parents
        else:
            parents = [population[idx] for idx in fitness_idx_sorted[:self.num_parents]]
        # print(parents)
        return parents

    # def update_best(self, result: Dict[str, Union[float, str]]) -> None:
    #     """Keep tracking the best result found in this explorer.

    #     Args:
    #         result: The new result to be checked.

    #     """
    #     if 'speedup' in FLAGS.norm_method:
    #         REF = min
    #     else:
    #         REF = max
    #     if self.key_perf_dict:
    #         key_refs_perf = REF(self.key_perf_dict, key=(lambda key: self.key_perf_dict[key]))
    #         refs_perf = self.key_perf_dict[key_refs_perf]
    #     else:
    #         if REF == min:
    #             refs_perf = float(-inf)
    #         else:
    #             refs_perf = float(inf)
    #     point_key = gen_key_from_design_point(result['point'])
    #     if point_key not in self.key_perf_dict and REF(result['perf'], refs_perf) != result['perf']: # if the new result is better than the references designs
    #         self.best_result = result
    #         self.log.info(('Found a better result at {}: Perf {:.1e}'.format(
    #                     self.explored_point, result['perf'])))
    #         if len(self.key_perf_dict.keys()) >= self.num_top_designs:
    #             ## replace maxmimum performance value
    #             key_refs_perf = REF(self.key_perf_dict, key=(lambda key: self.key_perf_dict[key]))
    #             self.best_results_dict.pop((self.key_perf_dict[key_refs_perf], key_refs_perf))
    #             self.key_perf_dict.pop(key_refs_perf)

    #         # attrs = vars(result)
    #         self.log.info(', '.join("%s: %s" % item for item in result.items()))
    #         self.key_perf_dict[point_key] = result['perf']
    #         self.best_results_dict[(result['perf'], point_key)] = result

    #     return REF([-p for p in self.key_perf_dict.values()])

    def run(self) -> None:
        timer = time.time()
        num_iter = 0
        reward = 0
        # fitness = [(self.fitness_function(p)).perf for p in self.population]
        fitness = []
        all_population = {}
        for p in self.population:
            result = self.fitness_function(p)
            if isinstance(result, Result):
                fitness.append(result.perf)
            else:
                fitness.append(0.0)
        all_population = set(tuple(row) for row in self.population)
        distinct_population = len(set(tuple(row) for row in self.population))
        saver.info(
            f'ensuring parents distinct: {FLAGS.dist_parent}, children (up to crossover) distinct: {FLAGS.dist_child}')
        explored_set = set()
        cur_best_perf = -inf
        # saver.info(f'not ensuring either parents and children (up to crossover) are distinct')
        # saver.info(f'ensuring both parents and children (up to crossover) are distinct')
        # saver.info(f'ensuring only parents are distinct')
        saver.info(f'Iter {num_iter} with {distinct_population} distinct genes in the population.')
        while (time.time() - timer) < self.timeout and distinct_population > 1:
            try:
                self.log.debug(f'Iteration {num_iter} with best reward: {reward}')
                # Select the parents
                parents = self.select_parents(self.population, fitness)
                # for idx, p in enumerate(parents):
                #     saver.log_info(f'parent {idx}: {p}')
                # Crossover
                children = self.crossover(parents)
                # for idx, p in enumerate(children):
                #     saver.log_info(f'child {idx}: {p}')
                # Mutation
                children = self.mutation(children)
                # Compose the new generation
                # pprint(self.population)
                self.population[0:self.num_parents - 1] = parents.copy()
                self.population[self.num_parents:] = children.copy()
                all_population.update(set(tuple(row) for row in self.population))
                # pprint(self.population)
                # evaluate the population
                for idx, p in enumerate(self.population):
                    result = self.fitness_function(p)
                    if isinstance(result, Result):
                        if result.valid:
                            explored_set.add(rl_utils.point_to_str(result.point))
                            cur_best_perf = max(cur_best_perf, result.perf)
                        fitness[idx] = result.perf
                        reward = -self.update_best(result)
                    else:
                        fitness[idx] = 0.0
                    # r = {'perf': fitness[idx], 'point': self.vector2point(p)}
                distinct_population = len(set(tuple(row) for row in self.population))
                distinct_parents = len(set(tuple(row) for row in parents))
                distinct_children = len(set(tuple(row) for row in children))
                
                if num_iter % 20 == 0:
                    if not os.path.exists(self.log_path.format(num_iter)):
                        os.makedirs(self.log_path.format(num_iter))
                    with open(self.log_path.format(f'{num_iter}/designs.log'), 'w') as f:
                        i = 0
                        for _, result in sorted(self.best_results_dict.items(), reverse=True):
                            attrs = vars(result)
                            f.write(f'Design {i}: \n')
                            f.write(', '.join("%s: %s" % item for item in attrs.items()))
                            f.write('\n')
                            i += 1
                    with open(self.log_path.format(f'{num_iter}/{self.kernel_name}_best.pickle'), 'wb') as handle:
                        pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                        handle.flush()
                        
                if num_iter % 10 == 0:
                    with open(self.log_path.format('1.log'), 'a') as f:
                        rl_utils.print_logs(
                            f,
                            [
                                f'Current best perf: {cur_best_perf}',
                                f'Explored points: {len(explored_set)}'
                            ]
                        )
                self.explored_point += len(fitness)
                num_iter += 1

                saver.info(f"""Iter {num_iter} with {distinct_population} distinct genes in the population 
                  {distinct_parents} distinct parents and {distinct_children} distinct children
                  total number of distinct genes so far: {len(all_population)}""")
            except StopIteration:
                break

        self.log.info(f'Explored {self.explored_point} points')


## Simulated Annealing
class SAExplorer(Explorer):
    def __init__(
        self, path_kernel: str, kernel_name: str, path_graph: str, param: Dict[str, Any], first_dse: bool = False,
            run_dse: bool = True, prune_invalid=FLAGS.prune_class, point: DesignPoint = None, pragma_dim=None,
            timeout: int = 60*60, device = FLAGS.device
        ):
        """Constructor.

        Args:
            ds: Design space.
        """
        super(SAExplorer, self).__init__(path_kernel, kernel_name, path_graph, first_dse, run_dse, prune_invalid,
                                         pragma_dim, device)
        if 'real_reg_model_path' in param:
            print('Load new regression parameter')
            self.GNNmodel.load_parameter(param['real_reg_model_path'])
        
        if 'real_class_model_path' in param:
            assert prune_invalid
            print('Load new classification parameter')
            if prune_invalid: self.GNNmodel_valid.load_parameter(param['real_class_model_path'])
        self.batch_size = 1
        self.sorted_params = sorted(list(self.ds.keys()))
        self.init_temp = FLAGS.init_temp
        self.final_temp = 0.1
        self.scale_temp = 0.1
        self.default_point = get_default_point(self.ds)
        # self.database = redis.StrictRedis(host='localhost', port=int(6380))
        # self.database.flushdb()
        self.f_db = join(saver.logdir, 'result.db')
        self.log.info('Done init')
        self.log_path = param['log_path']
        os.makedirs(self.log_path.format(''), exist_ok=True)
        
        self.timeout = timeout

        if self.run_dse:
            self.run()
            self.log.info('Best Results Found:')
            i = 1
            with open(join(saver.logdir, f'{kernel_name}.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
            for _, result in sorted(self.best_results_dict.items()):
                attrs = vars(result)
                self.log.info(f'Design {i}')
                self.log.info(', '.join("%s: %s" % item for item in attrs.items()))
                i += 1
            log_path = self.log_path
            with open(log_path.format(f'best_design.log'), 'w') as f:
                i = 0
                for _, result in sorted(self.best_results_dict.items(), reverse=True):
                    attrs = vars(result)
                    f.write(f'Design {i}: \n')
                    f.write(', '.join("%s: %s" % item for item in attrs.items()))
                    f.write('\n')
                    i += 1
            with open(log_path.format(f'{self.kernel_name}_best.pickle'), 'wb') as handle:
                pickle.dump(self.best_results_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
                handle.flush()
        else:
            results = self.get_results([point])
            attrs = vars(results[0])
            self.log.info(', '.join("%s: %s" % item for item in attrs.items()))

    def fitness_function(self, solution: List[str]) -> Result:
        return (self.get_results([self.vector2point(solution)])[0])

    def fitness_function(self, solution: DesignPoint) -> Result:
        return (self.get_results([solution])[0])

    def get_neighbor(self, point: DesignPoint, param_key: str) -> DesignPoint:
        options = self.gen_options(point, param_key)  # the available options for the given param
        cur_option_id = options.index(point[param_key])
        if cur_option_id + 1 < len(options):  ## first check the next option
            point[param_key] = options[cur_option_id + 1]
            changed = self.validate_point(point)
            return True
        elif cur_option_id - 1 >= 0:  ## then check the prev option
            point[param_key] = options[cur_option_id - 1]
            changed = self.validate_point(point)
            return True
        else:
            # saver.warning(f'No option left for parameter {param_key}')
            return False

    def run(self) -> None:
        timer = time.time()
        num_iter = 1
        reward = 0
        cur_temp = self.init_temp
        cur_point = self.default_point
        cur_result = self.fitness_function(cur_point)
        stop = False
        while (time.time() - timer) < self.timeout and cur_temp > self.final_temp:
            try:
                self.log.debug(f'Iteration {num_iter} with best reward: {reward}')
                orig_point = self.clone_point(cur_point)
                ##  pick a neighbor
                all_params = deepcopy(self.sorted_params)
                while True:
                    new_point = self.clone_point(orig_point)
                    param_key = random.choice(all_params)
                    all_params.remove(param_key)
                    # print(f'{num_iter} picked {param_key} from {all_params}')
                    if all_params == []:
                        if not self.get_neighbor(new_point, param_key):
                            saver.info(f'No neighbors found. Stopping!')
                            stop = True
                            break
                    if self.get_neighbor(new_point, param_key):
                        break
                if stop:
                    break
                ##  check if neighbor is better
                ## TODO: assumes speedup
                if 'speedup' not in FLAGS.norm_method:
                    raise NotImplementedError()

                # if cur_temp < FLAGS.hls_temp_run:
                #     new_result = self.get_hls_results([new_point], self.database, self.f_db)
                #     if 'speedup' not in FLAGS.norm_method:
                #         raise NotImplementedError()
                #     assert new_result.perf != 0 or not new_result.valid
                #     if new_result.perf != 0:
                #         y = FLAGS.normalizer / new_result.perf
                #         # y = res_reference.perf / obj.perf
                #         if FLAGS.norm_method == 'speedup-log2':
                #             y = log2(y)
                #         saver.info(
                #             f'normalized perf of HLS run with {new_result.perf} is {y}, model prediction: {self.fitness_function(new_point).perf}')
                #         new_result.perf = y

                # else:
                #     new_result = self.fitness_function(new_point)
                new_result = self.fitness_function(new_point)
                # print(new_result, cur_result)
                if isinstance(new_result, float): 
                    if isinstance(cur_result, float): cost_diff = 1000
                    else: cost_diff = float('inf')
                else:
                    if isinstance(cur_result, float): cost_diff = 1000
                    else:
                        cost_diff = new_result.perf - cur_result.perf
                if math.isinf(cost_diff):
                    pass
                    # saver.info(
                    #     f'discarding point with perf {new_result.perf} at temp {cur_temp} with point {new_result.point}')
                    # saver.info(f'previous result was {cur_result.perf} with point {cur_result.point}')
                ## accept the point if it's better or its energy is higher than a random value
                if not math.isinf(cost_diff) and (
                        cost_diff > 0 or random.uniform(0, 1) < exp(cost_diff / cur_temp)):
                    cur_point = new_point
                    cur_result = new_result
                    if not isinstance(new_result, float) and new_result.valid:
                        self.update_best(new_result)

                cur_temp -= self.scale_temp

                self.explored_point += 1
                num_iter += 1

            except StopIteration:
                break

        self.log.info(f'Explored {self.explored_point} points')

