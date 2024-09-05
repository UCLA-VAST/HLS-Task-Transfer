from src.config import FLAGS
from src.saver import saver
from src.utils import get_root_path, print_stats, get_save_path, \
    create_dir_if_not_exists, plot_dist, load
from src.result import Result, persist

from os.path import join, basename, dirname
import os
from glob import glob, iglob

from math import ceil

from sklearn.preprocessing import OneHotEncoder
from torch_geometric.data import Data, Batch

import networkx as nx
import redis, pickle, random, time
import pickle5
import numpy as np
from collections import Counter, defaultdict, OrderedDict

from scipy.sparse import hstack, coo_matrix

from tqdm import tqdm

import os.path as osp

import torch
from torch_geometric.data import Dataset
from torch.utils.data import random_split

from shutil import rmtree
import math


NON_OPT_PRAGMAS = ['LOOP_TRIPCOUNT', 'INTERFACE', 'INTERFACE', 'KERNEL']
WITH_VAR_PRAGMAS = ['DEPENDENCE', 'RESOURCE', 'STREAM', 'ARRAY_PARTITION']
#SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'run10-with_kernel_name-no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}')
TARGET = ['perf', 'util-DSP', 'util-BRAM', 'util-LUT', 'util-FF']
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
## regressions for FPGA'22 and DAC'22
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up5-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up3-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'pragma-with-updated-up4-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
# SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'smaller_normalizer-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(FLAGS.target)}')
if FLAGS.v2_db:
    if FLAGS.only_common_db:
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-new-db-common-only-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        if FLAGS.test_extra:
            SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-new-db-new-speedup-common-only-extra-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        else:
            SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-new-db-new-speedup-common-only-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse1-new-db-new-speedup-common-only-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
    else:
        if FLAGS.encoder_path == None:
            SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
            # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-new-db-all-data-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        else:
            # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
            # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse1-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
            # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse2-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
            if not FLAGS.only_new_points:
                extra = '1' if FLAGS.v21 else ''
                ## dse5
                # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse3-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
                ## new dse5 (util * 3)
                SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse5-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
                ## gae task transfer
                SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-new-db-all-data-tile-{FLAGS.graph_type}-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
                SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'v2{extra}-transfer-MLP-{FLAGS.pragma_as_MLP}-round{FLAGS.round_num}-40kernel-icmp-feb-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
                # SAVE_DIR = join('/expr/test/v20')
                ## two step training as Yizhou said
                # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse4-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
            else:
                SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-dse1-only-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}', 'dse3')
            # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-scratch-dse2-new-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
else:
    # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up5-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
    if FLAGS.new_speedup:
        ## FPGA'22 results in DAC'22
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up3-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        ## with FPGA'22 and DAC'22 data
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-up3-fpga-dac-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-all-data-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        ## all DAC train and test kernels
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-all-data-all-dac-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(f'/expr/save/with-updated-all-data-tile-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'with-updated-all-data-tile-correct-edge-ID-{FLAGS.graph_type}-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'with-updated-all-data-tile-extended-graph-db-round3-{FLAGS.graph_type}-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'{FLAGS.dataset}-{FLAGS.graph_type}-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'fine-tune-extra_round{FLAGS.round_num}-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'forgetting-round{FLAGS.round_num-1}-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(f'/dev/shm/forgetting-round{FLAGS.round_num-1}-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'MLP-{FLAGS.pragma_as_MLP}-round{FLAGS.round_num}-40kernel-icmp-feb-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join('/home/atefehSZ/', f'forgetting-round{FLAGS.round_num-1}-db-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join('/expr/test/v18/test')
        ## task transfer
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-old-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
        # SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-added3-old-db-new-speedup-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
    else:
        SAVE_DIR = join(get_save_path(), FLAGS.dataset, f'with-updated-task-transfer-old-db-{FLAGS.task}_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_no_pragma_{FLAGS.no_pragma}_tag_{FLAGS.tag}_{"".join(TARGET)}')
    

ENCODER_PATH = join(SAVE_DIR, 'encoders')
# PROCESSED_DIR = join(SAVE_DIR, 'processed')
# create_dir_if_not_exists(SAVE_DIR)

# DATASET = 'cnn1'
DATASET = 'machsuite-poly'
if DATASET == 'cnn1':
    KERNEL = 'cnn'
    db_path = '../dse_database/databases/cnn_case1/'
elif DATASET == 'machsuite':
    KERNEL = FLAGS.tag
    db_path = '../dse_database/machsuite/databases/**/*'
elif DATASET == 'machsuite-poly':
    KERNEL = FLAGS.tag
    db_path = []
    for benchmark in FLAGS.benchmarks:
        db_path.append(f'{get_root_path()}/dse_database/{benchmark}/databases/**/*')
    

if FLAGS.dataset == 'vitis-cnn':
    GEXF_FOLDER = join(get_root_path(), 'dse_database', 'dotGenerator_all_kernels')
elif FLAGS.dataset == 'machsuite':
    GEXF_FOLDER = join(get_root_path(), 'dse_database', 'machsuite', 'dot-files')
elif FLAGS.dataset == 'programl':
    GEXF_FOLDER = join(get_root_path(), 'dse_database', 'programl', '**', 'processed', '**')
elif FLAGS.dataset == 'programl-machsuite':
    GEXF_FOLDER = join(get_root_path(), 'dse_database', 'programl', 'machsuite', 'processed')
elif FLAGS.dataset == 'simple-programl':
    GEXF_FOLDER = join(get_root_path(), 'dse_database', 'simple-program', 'programl', 'processed', '**')
else:
    raise NotImplementedError()


    # GEXF_FILES = [f for f in sorted(glob(join(GEXF_FOLDER, '*.gexf'))) if f.endswith('.gexf') and KERNEL in f]
from src import config
TARGETS = config.TARGETS
MACHSUITE_KERNEL = config.MACHSUITE_KERNEL
poly_KERNEL = config.poly_KERNEL
ALL_KERNEL = MACHSUITE_KERNEL + poly_KERNEL

if FLAGS.all_kernels:
    if FLAGS.graph_type == '':
        GEXF_FILES = sorted([f for f in iglob(GEXF_FOLDER, recursive=True) if f.endswith('.gexf') and 'extended' not in f and 'processed' in f])
    else:
        if 'hierarchy' not in FLAGS.graph_type:
            pruner = 'hierarchy'
        else:
            pruner = 'initial'
        GEXF_FILES = sorted([f for f in iglob(GEXF_FOLDER, recursive=True) if f.endswith('.gexf') and FLAGS.graph_type in f and 'processed' in f and pruner not in f])
else:
    GEXF_FILES = sorted([f for f in iglob(GEXF_FOLDER, recursive=True) if f.endswith('.gexf') and f'{FLAGS.target_kernel}_' in f and 'extended' not in f and 'processed' in f])

def finte_diff_as_quality(new_result: Result, ref_result: Result) -> float:
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
            5 * ceil(u * 100 / 5) / 100 + FLAGS.epsilon for k, u in result.res_util.items()
            if k.startswith('util')
        ]

        # Compute the area
        return sum([2.0**(1.0 / (1.0 - u)) for u in utils])

    ref_util = quantify_util(ref_result)
    new_util = quantify_util(new_result)

    # if (new_result.perf / ref_result.perf) > 1.05:
    #     # Performance is too worse to be considered
    #     return -float('inf')

    if new_util == ref_util:
        if new_result.perf < ref_result.perf:
            # Free lunch
            # return float('inf')
            return FLAGS.max_number
        # Same util but slightly worse performance, neutral
        return 0

    return -(new_result.perf - ref_result.perf) / (new_util - ref_util)
    
class MyOwnDataset(Dataset):
    def __init__(self, root_dir=None, transform=None, pre_transform=None, data_files=None):
        # self.processed_dir = PROCESSED_DIR
        if root_dir is None:
            root_dir = SAVE_DIR
        self._root_dir = root_dir
        super(MyOwnDataset, self).__init__(self._root_dir, transform, pre_transform)
        if data_files is not None:
            self.data_files = data_files
        # self.SAVE_DIR = SAVE_DIR
        self.save_labels = dict()
        self.save_idxs = set()

    @property
    def raw_file_names(self):
        # return ['some_file_1', 'some_file_2', ...]
        return []

    @property
    def processed_file_names(self):
        # return ['data_1.pt', 'data_2.pt', ...]
        if hasattr(self, 'data_files'):
            return self.data_files
        else:
            rtn = glob(join(self._root_dir, '*.pt'))
            return rtn

    def download(self):
        pass

    # Download to `self.raw_dir`.

    def process(self):
        # i = 0
        # for raw_path in self.raw_paths:
        #     # Read data from `raw_path`.
        #     data = Data(...)
        #
        #     if self.pre_filter is not None and not self.pre_filter(data):
        #         continue
        #
        #     if self.pre_transform is not None:
        #         data = self.pre_transform(data)
        #
        #     torch.save(data, osp.join(self.processed_dir, 'data_{}.pt'.format(i)))
        #     i += 1
        pass

    def len(self):
        return len(self.processed_file_names)

    def __len__(self):
        return self.len()
    
    def get_file_path(self, idx):
        if hasattr(self, 'data_files'):
            fn = self.data_files[idx]
        else:
            fn = osp.join(SAVE_DIR, 'data_{}.pt'.format(idx))
        return fn

    def get(self, idx):
        if hasattr(self, 'data_files'):
            fn = self.data_files[idx]
        else:
            fn = osp.join(SAVE_DIR, 'data_{}.pt'.format(idx))
        data = torch.load(fn)
        
        if idx in self.save_idxs:
            data.perf = self.save_labels[idx]
        return data
    
    def clear_modify_label(self):
        self.save_labels = dict()
        self.save_idxs = set()

    def add_modify_label(self, idx: int, y: torch.tensor):
        self.save_idxs.add(idx)
        self.save_labels[idx] = y


def split_dataset(dataset, train, val, dataset_test=None):
    file_li = dataset.processed_file_names
    li = random_split(file_li, [train, val, len(dataset) - train - val],
                          generator=torch.Generator().manual_seed(FLAGS.random_seed))
    if dataset_test is None:
        dataset_test = li[2]
    saver.log_info(f'{len(file_li)} graphs in total:'
          f' {len(li[0])} train {len(li[1])} val '
          f'{len(dataset_test)} test')
    train_dataset = MyOwnDataset(data_files=li[0])
    val_dataset = MyOwnDataset(data_files=li[1])
    test_dataset = MyOwnDataset(data_files=dataset_test)
    #### if the inputs are lists of data:
    # import random
    # random.shuffle(dataset)
    # train_dataset = dataset[:train]
    # val_dataset = dataset[train:train+val]
    # if dataset_test is None:
    #     test_dataset = dataset[train+val:]
    # else:
    #     test_dataset = dataset_test

    return [train_dataset, val_dataset, test_dataset]

def split_dataset_resample(dataset, train, val, test, test_id=0):
    file_li = dataset.processed_file_names
    # file_li = ['xxxx'] * len(file_li)
    num_batch = int(1 / test)
    splits_ratio = [int(len(dataset) * test)] * num_batch
    splits_ratio[-1] = len(dataset) - int(len(dataset) * test * (num_batch-1))
    print(splits_ratio, len(dataset), sum(splits_ratio))
    splits_ = random_split(file_li, splits_ratio,
                          generator=torch.Generator().manual_seed(100))
    test_split = splits_[test_id]
    train_val_data = []
    for i in range(num_batch):
        if i != test_id:
            train_val_data.extend(splits_[i])
    new_train, new_val = int(len(train_val_data) * train / (train+val)), len(train_val_data) - int(len(train_val_data) * train / (train+val))
    li = random_split(train_val_data, [new_train, new_val],
                          generator=torch.Generator().manual_seed(100))
    saver.log_info(f'{len(file_li)} graphs in total:'
          f' {len(li[0])} train {len(li[1])} val '
          f'{len(test_split)} test')
    train_dataset = MyOwnDataset(data_files=li[0])
    val_dataset = MyOwnDataset(data_files=li[1])
    test_dataset = MyOwnDataset(data_files=test_split)
    # all_data = []
    # all_data.extend(li[0])
    # all_data.extend(li[1])
    # all_data.extend(test_split)
    # all_data = [int(((f.split('/')[-1]).split('.')[0]).split('_')[-1]) for f in all_data]
    # print(sorted(all_data))
    # print(len(all_data), sorted(all_data)[0], sorted(all_data)[-1])
    return train_dataset, val_dataset, test_dataset

def get_kernel_samples(dataset):
    samples = defaultdict(list)
    for data in dataset:
        if f'{FLAGS.target_kernel}_' in data.gname:
            samples[FLAGS.target_kernel].append(data)

    return samples[FLAGS.target_kernel]

def split_train_test_kernel(dataset):
    samples = defaultdict(list)
    assert FLAGS.test_kernels is not None, 'No test_kernels selected'
    for idx, data in enumerate(dataset):
        if any(f'{kernel_name}_' in data.kernel for kernel_name in FLAGS.test_kernels):
            samples['test'].append(dataset.get_file_path(idx))
        else:
            samples['train'].append(dataset.get_file_path(idx))

            
    data_dict = defaultdict()
    data_dict['train'] = MyOwnDataset(data_files=samples['train'])
    # data_dict['test'] = MyOwnDataset(data_files=samples['test'])
    data_dict['test'] = samples['test']

    return data_dict

def get_data_list():
    saver.log_info(f'Found {len(GEXF_FILES)} gexf files under {GEXF_FOLDER}')
    # create a redis database
    database = redis.StrictRedis(host='localhost', port=FLAGS.port)

    ntypes = Counter()
    ptypes = Counter()
    numerics = Counter()
    itypes = Counter()
    ftypes = Counter()
    btypes = Counter()
    ptypes_edge = Counter()
    ftypes_edge = Counter()

    if FLAGS.encoder_path != None:
        saver.info(f'loading encoder from {FLAGS.encoder_path}')
        encoders = load(FLAGS.encoder_path, saver.logdir)
        enc_ntype = encoders['enc_ntype']
        enc_ptype = encoders['enc_ptype']
        enc_itype = encoders['enc_itype']
        enc_ftype = encoders['enc_ftype']
        enc_btype = encoders['enc_btype']
        
        enc_ftype_edge = encoders['enc_ftype_edge']
        enc_ptype_edge = encoders['enc_ptype_edge']

    else:
        ## handle_unknown='ignore' is crucial for handling unknown variables of new kernels
        enc_ntype = OneHotEncoder(handle_unknown='ignore')
        enc_ptype = OneHotEncoder(handle_unknown='ignore')
        enc_itype = OneHotEncoder(handle_unknown='ignore')
        enc_ftype = OneHotEncoder(handle_unknown='ignore')
        enc_btype = OneHotEncoder(handle_unknown='ignore')
        
        enc_ftype_edge = OneHotEncoder(handle_unknown='ignore')
        enc_ptype_edge = OneHotEncoder(handle_unknown='ignore')

    data_list = []

    all_gs = OrderedDict()

    X_ntype_all = []
    X_ptype_all = []
    X_itype_all = []
    X_ftype_all = []
    X_btype_all = []
    
    edge_ftype_all = []
    edge_ptype_all = []
    tot_configs = 0
    num_files = 0
    init_feat_dict = {}
    max_pragma_length = 0
    if FLAGS.separate_T and FLAGS.pragma_encoder:
        for gexf_file in tqdm(GEXF_FILES[0:]): 
            saver.log_info(f'now processing {gexf_file}')
            db_paths = []
            n = basename(gexf_file).split('_')[0]
            for db_p in db_path:
                if FLAGS.v2_db:
                    paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v18' not in f and 'v20' in f and 'one-db-extended-round{FLAGS.round_num}' in f] # and not 'updated' in f
                else:
                    paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f and 'v18' in f and 'one-db-extended-round{FLAGS.round_num}' in f] # and not 'updated' in f
                db_paths.extend(paths)
            if db_paths is None:
                saver.warning(f'No database found for {n}. Skipping.')
                continue
            database.flushdb()
            for idx, file in enumerate(db_paths):
                saver.log_info(f'processing db_paths for {n}: {file}')
                with open(file, 'rb') as f_db:
                    database.hmset(0, pickle.load(f_db))
                break
            keys = [k.decode('utf-8') for k in database.hkeys(0)]
            for key in sorted(keys):
                obj = pickle.loads(database.hget(0, key))
                # try:
                if type(obj) is int or type(obj) is dict:
                    continue
                if FLAGS.task == 'regression' and key[0:3] == 'lv1':# or obj.perf == 0:#obj.ret_code.name == 'PASS':
                    continue
                if FLAGS.task == 'regression' and not FLAGS.invalid and obj.perf == 0:
                    continue
                #### TODO !! fix databases that have this problem:
                if obj.point == {}:
                    continue
                len_pragmas = len(obj.point)
                max_pragma_length = max(max_pragma_length, len_pragmas)
                break
    else:
        max_pragma_length = 21

    for gexf_file in tqdm(GEXF_FILES[0:]):  # TODO: change for partial/full data
        saver.info(f'Working on graph file: {gexf_file}')
        if FLAGS.dataset == 'vitis-cnn':
            if FLAGS.task == 'regression' and FLAGS.tag == 'only-vitis' and 'cnn' in gexf_file:
                continue
            pass
        elif FLAGS.dataset == 'simple-programl':
            pass
        elif FLAGS.dataset == 'machsuite' or 'programl' in FLAGS.dataset:
            proceed = False
            for k in ALL_KERNEL:
                if f'{k}_' in gexf_file:
                    proceed = True
                    break
            if not proceed:
                saver.info(f'Skipping this file as the kernel name is not selected. Check config file.')
                continue
            # pass
        else:
            raise NotImplementedError()

        g = nx.read_gexf(gexf_file)
        # g = _check_prune_non_pragma_nodes(g)
        g.variants = OrderedDict()
        if FLAGS.dataset == 'simple-programl':
            # gname = basename(dirname(gexf_file))
            # n = basename(dirname(gexf_file))
            gname = basename(gexf_file).split('.')[0]
            n = f"{basename(gexf_file).split('_')[0]}_"
        else:
            gname = basename(gexf_file).split('.')[0]
            n = f"{basename(gexf_file).split('_')[0]}_"
        saver.log_info(gname)
        all_gs[gname] = g

        
        if FLAGS.dataset == 'vitis-cnn':
            if n != 'cnn1':
                db_paths = glob(f'../dse_database/databases/vitis/exhaustive/{n}_result.db')
                db_paths += glob(f'../dse_database/databases/vitis/bottleneck/{n}_result.db')
            else:
                db_paths = glob(f'../dse_database/databases/cnn_case1/{n}_result*.db')
        elif FLAGS.dataset == 'machsuite':
            db_paths = glob(f'../dse_database/machsuite/databases/exhaustive/{n}_result*.db')
            db_paths += glob(f'../dse_database/machsuite/databases/bottleneck/{n}_result*.db')
        elif FLAGS.dataset == 'simple-programl':
            db_paths = [f for f in iglob(join(get_root_path(), 'dse_database/simple-program/databases/**'), recursive=True) if f.endswith('.db') and n in f and 'one-db' in f]
        elif FLAGS.dataset == 'programl':
            db_paths = []
            for db_p in db_path:
                if FLAGS.v2_db:
                    if FLAGS.only_common_db:
                        if FLAGS.test_extra:
                            paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'extra' in f] # and not 'updated' in f
                        else:
                            paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'common-dse4' in f] # and not 'updated' in f
                    else: 
                        if FLAGS.only_new_points:
                            paths = [f for f in iglob(db_p, recursive=True) if f.endswith('extra_3.db') and n in f and 'large-size' not in f and not 'archive' in f and 'extra' in f] # and not 'updated' in f
                        else:
                            extra = '1' if FLAGS.v21 else '0'
                            # paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' in f and 'corrupt' not in f]
                            paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and f'v2{extra}' in f and 'v18' not in f and 'one-db' in f and 'test' not in f and f'extended-round{FLAGS.round_num}' in f]
                else:
                    # paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f and 'single-merged' in f] # and not 'updated' in f
                    ## FPGA'22 and DAC'22 db
                    # paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f and 'up3-fpga-dac' in f] # and not 'updated' in f
                    # paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f and ('common' not in f and 'extra' not in f) and 'single-merged' in f] # and not 'updated' in f
                    tag = 'one-db'
                    if FLAGS.FT_extra: tag = 'extra'
                    paths = [f for f in iglob(db_p, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f and 'v18' in f and f'{tag}-extended-round{FLAGS.round_num}' in f] # and 'extended' not in f and 'round' not in f # and 'gae-on' in f] # and not 'updated' in f
                db_paths.extend(paths)
            if db_paths is None:
                saver.warning(f'No database found for {n}. Skipping.')
                continue
        elif FLAGS.dataset == 'programl-machsuite':
            #db_paths_dict = {}
            #for KERNEL in MACHSUITE_KERNEL:
            db_paths = [f for f in iglob(db_path, recursive=True) if f.endswith('.db') and n in f and 'large-size' not in f and not 'archive' in f and 'v20' not in f]
            #    db_paths_dict[KERNEL] = db_paths
        else:
            raise NotImplementedError()

        # db_paths = sorted(db_paths)
        database.flushdb()
        saver.log_info(f'db_paths for {n}:')
        for d in db_paths:
            saver.log_info(f'{d}')
        if len(db_paths) == 0:
            saver.log_info(f'{n} has no db_paths')

        if len(db_path) == 0:
            saver.warning(f'no database file for {n}')
            continue
        
        # load the database and get the keys
        # the key for each entry shows the value of each of the pragmas in the source file
        for idx, file in enumerate(db_paths):
            f_db = open(file, 'rb')
            # print('loading', f_db)
            try:
                data = pickle.load(f_db)
            except:
                data = pickle5.load(f_db)
            # data = pickle.load(f_db)
            database.hmset(0, data)
            max_idx = idx + 1
            f_db.close()
        keys = [k.decode('utf-8') for k in database.hkeys(0)]
        lv2_keys = [k for k in keys if 'lv2' in k]
        saver.log_info(f'num keys for {n}: {len(keys)} and lv2 keys: {len(lv2_keys)}')

        got_reference = False
        res_reference = 0
        max_perf = 0
        for key in sorted(keys):
            pickle_obj = database.hget(0, key)
            if pickle_obj is None:
                continue
            obj = pickle.loads(pickle_obj)
            # try:
            if type(obj) is int or type(obj) is dict:
                continue
            if key[0:3] == 'lv1' or obj.perf == 0:#obj.ret_code.name == 'PASS':
                continue
            if obj.perf > max_perf:
                max_perf = obj.perf
                got_reference = True
                res_reference = obj
        if res_reference != 0:
            saver.log_info(f'reference point for {n} is {res_reference.perf}')
        else:
            saver.log_info(f'did not find reference point for {n} with {len(keys)} points')


        cnt = 0
        for key in sorted(keys):
            pickle_obj = database.hget(0, key)
            if pickle_obj is None:
                continue
            obj = pickle.loads(pickle_obj)
            # try:
            if type(obj) is int or type(obj) is dict:
                continue
            if FLAGS.task == 'regression' and key[0:3] == 'lv1':# or obj.perf == 0:#obj.ret_code.name == 'PASS':
                continue
            if FLAGS.task == 'regression' and not FLAGS.invalid and obj.perf < FLAGS.min_allowed_latency:
                continue
            #### TODO !! fix databases that have this problem:
            if obj.point == {}:
                continue
            cnt += 1
            # print(key, obj.point)
            xy_dict = _encode_X_dict(
                g, ntypes=ntypes, ptypes=ptypes, itypes=itypes, ftypes=ftypes, btypes = btypes, numerics=numerics, point=obj.point)
            edge_dict = _encode_edge_dict(
                g, ftypes=ftypes_edge, ptypes=ptypes_edge)
            
            
            pragmas = []
            pragma_name = []
            for name, value in sorted(obj.point.items()):
                if type(value) is str:
                    if value.lower() == 'flatten': #### TRY ME: changing the encodering of pipeline pragma to see if it helps with better GAE path
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
                pragma_name.append(name)
            
            # if 'gemver' in gname:
            #     print(len(pragmas), obj.point)
            # if 'gemver' in gname and len(pragmas) == 21:
            #     database.hdel(0, key)
            #     saver.warning(f'deleted {key} from database of {gname}')
            #     assert len(db_paths) == 1
            #     persist(database, db_paths[0])
            #     continue

            check_dim = init_feat_dict.get(gname)
            if check_dim is not None:
                # saver.info((gname, check_dim, len(pragmas)))
                assert check_dim[0] == len(pragmas), print(check_dim, len(pragmas))
                # if check_dim == len(pragmas):
                #     pass
                # else:
                #     database.hdel(0, key)
                #     print(check_dim, len(pragmas))
                #     saver.warning(f'deleted {key} from database of {gname}')
                #     assert len(db_paths) == 1
                #     persist(database, db_paths[0])
                #     continue
            else:
                init_feat_dict[gname] = [len(pragmas)]
            if FLAGS.pragma_uniform_encoder:
                pragmas.extend([0] * (max_pragma_length - len(pragmas)))
                
            xy_dict['pragmas'] = torch.FloatTensor(np.array([pragmas])).half()


            if FLAGS.task == 'regression':
                for tname in TARGETS:
                    if tname == 'perf':
                        if FLAGS.norm_method == 'log2':
                            y = math.log2(obj.perf + FLAGS.epsilon)
                        elif 'const' in FLAGS.norm_method:
                            y = obj.perf * FLAGS.normalizer
                            if y == 0:
                                y = FLAGS.max_number * FLAGS.normalizer
                            if FLAGS.norm_method == 'const-log2':
                                y = math.log2(y)
                        elif 'speedup' in FLAGS.norm_method:
                            assert obj.perf != 0
                            y = FLAGS.normalizer / obj.perf
                            # y = res_reference.perf / obj.perf
                            if FLAGS.norm_method == 'speedup-log2':
                                y = math.log2(y) / 2
                        elif FLAGS.norm_method == 'off':
                            y = obj.perf
                        xy_dict['actual_perf'] = torch.FloatTensor(np.array([obj.perf]))
                        xy_dict['kernel_speedup'] = torch.FloatTensor(np.array([math.log2(res_reference.perf / obj.perf)])).half()

                    elif tname == 'quality':
                        y = finte_diff_as_quality(obj, res_reference)
                        if FLAGS.norm_method == 'log2':
                            y = math.log2(y + FLAGS.epsilon)
                        elif FLAGS.norm_method == 'const':
                            y = y * FLAGS.normalizer
                        elif FLAGS.norm_method == 'off':
                            pass
                    elif 'util' in tname or 'total' in tname:
                        y = obj.res_util[tname] * FLAGS.util_normalizer
                    else:
                        raise NotImplementedError()
                    xy_dict[tname] = torch.FloatTensor(np.array([y]))
                    if tname != 'quality' and (not 'total' in tname):
                        xy_dict[tname] = xy_dict[tname].half()
            elif FLAGS.task == 'class':
                if 'lv1' in key:
                    lv2_key = key.replace('lv1', 'lv2')
                    if lv2_key in keys:
                        continue
                    else:
                        y = 0
                else:
                    y = 0 if obj.perf < FLAGS.min_allowed_latency else 1    
                xy_dict['perf'] = torch.FloatTensor(np.array([y])).type(torch.LongTensor)
                ret_code = str(obj.ret_code)
                # if ret_code == 'RetCode.EARLY_REJECT':
                #     new_code = ''
                #     for msg in obj.criticals:
                #         if 'burst' in msg:
                #             new_code += 'Burst.'
                #         elif 'pipe' in msg:
                #             new_code += 'Pipe.'
                #         elif 'paral' in msg:
                #             new_code += 'Para.'
                #     ret_code = new_code
                xy_dict['ret_code'] = ret_code
            else:
                raise NotImplementedError()


            vname = key

            g.variants[vname] = (xy_dict, edge_dict)
            X_ntype_all += xy_dict['X_ntype']
            X_ptype_all += xy_dict['X_ptype']
            X_itype_all += xy_dict['X_itype']
            X_ftype_all += xy_dict['X_ftype']
            X_btype_all += xy_dict['X_btype']
            
            edge_ftype_all += edge_dict['X_ftype']
            edge_ptype_all += edge_dict['X_ptype']
                

        saver.log_info(f'final valid: {cnt}')
        tot_configs += len(g.variants)
        num_files += 1
        saver.log_info(f'{n} g.variants {len(g.variants)} tot_configs {tot_configs}')
        # saver.log_info(f"\tntypes {len(xy_dict['X_ntype'])} {xy_dict['X_ntype']}")
        saver.log_info(f'\tntypes {len(ntypes)} {ntypes}')
        saver.log_info(f'\titypes {len(itypes)} {itypes}')
        saver.log_info(f'\tbtypes {len(btypes)} {btypes}')
        saver.log_info(f'\tftypes {len(ftypes)} {ftypes}')
        saver.log_info(f'\tptypes {len(ptypes)} {ptypes}')
        saver.log_info(f'\tnumerics {len(numerics)} {numerics}')

    if FLAGS.encoder_path == None:
        enc_ptype.fit(X_ptype_all)
        enc_ntype.fit(X_ntype_all)
        enc_itype.fit(X_itype_all)
        enc_ftype.fit(X_ftype_all)
        enc_btype.fit(X_btype_all)
        
        enc_ftype_edge.fit(edge_ftype_all)
        enc_ptype_edge.fit(edge_ptype_all)

        saver.log_info(f'Done {num_files} files tot_configs {tot_configs}')
        # saver.log_info(f'\tntypes {len(X_ntype_all)} {X_ntype_all}')
        saver.log_info(f'\tntypes {len(ntypes)} {ntypes}')
        saver.log_info(f'\titypes {len(itypes)} {itypes}')
        saver.log_info(f'\tbtypes {len(btypes)} {btypes}')
        saver.log_info(f'\tftypes {len(ftypes)} {ftypes}')
        saver.log_info(f'\tptypes {len(ptypes)} {ptypes}')
        saver.log_info(f'\tnumerics {len(numerics)} {numerics}')

    for gname, g in all_gs.items():
        edge_index = create_edge_index(g)
        saver.log_info(f'edge_index created for {gname}')
        new_gname = gname.split('_')[0]
        for vname, d in g.variants.items():
            d_node, d_edge = d
            X = _encode_X_torch(d_node, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype)
            edge_attr = _encode_edge_torch(d_edge, enc_ftype_edge, enc_ptype_edge)

            if FLAGS.task == 'regression':
                data_list.append(Data(
                    gname=new_gname,
                    key=vname,
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
                    kernel_speedup=d_node['kernel_speedup'], # base is different per kernel
                    quality=d_node['quality'],
                    util_BRAM=d_node['util-BRAM'],
                    util_DSP=d_node['util-DSP'],
                    util_LUT=d_node['util-LUT'],
                    util_FF=d_node['util-FF'],
                    total_BRAM=d_node['total-BRAM'],
                    total_DSP=d_node['total-DSP'],
                    total_LUT=d_node['total-LUT'],
                    total_FF=d_node['total-FF'],
                    edge_attr=edge_attr,
                    kernel=gname
                ).to('cpu'))
            elif FLAGS.task == 'class':
                data_list.append(Data(
                    gname=new_gname,
                    x=X,
                    key=vname,
                    edge_index=edge_index,
                    pragmas=d_node['pragmas'],
                    perf=d_node['perf'],
                    ret_code = d_node['ret_code'],
                    edge_attr=edge_attr,
                    kernel=gname,
                    X_contextnids=d_node['X_contextnids'],
                    X_pragmanids=d_node['X_pragmanids'],
                    X_pragmascopenids=d_node['X_pragmascopenids'],                    
                    X_pseudonids=d_node['X_pseudonids'],    
                    X_icmpnids=d_node['X_icmpnids'],    
                    X_pragma_per_node=d_node['X_pragma_per_node']
                ).to('cpu'))
            else:
                raise NotImplementedError()


    nns = [d.x.shape[0] for d in data_list]
    print_stats(nns, 'number of nodes')
    ads = [d.edge_index.shape[1] / d.x.shape[0] for d in data_list]
    print_stats(ads, 'avg degrees')
    saver.info(data_list[0])
    saver.log_info(f'dataset[0].num_features {data_list[0].num_features}')
    TARGETS.append('actual_perf')
    for target in TARGETS:
        if not hasattr(data_list[0], target.replace('-', '_')):
            saver.warning(f'Data does not have attribute {target}')
            continue
        ys = [_get_y(d, target).item() for d in data_list]
        # if target == 'quality':
        #     continue
        plot_dist(ys, f'{target}_ys', saver.get_log_dir(), saver=saver, analyze_dist=True, bins=None)
        saver.log_info(f'{target}_ys', Counter(ys))

    if FLAGS.force_regen:
        saver.log_info(f'Saving {len(data_list)} to disk {SAVE_DIR}; Deleting existing files')
        rmtree(SAVE_DIR)
        create_dir_if_not_exists(SAVE_DIR)
        for i in tqdm(range(len(data_list))):
            torch.save(data_list[i].to('cpu'), osp.join(SAVE_DIR, 'data_{}.pt'.format(i)))

    if FLAGS.force_regen:
        from utils import save
        # if FLAGS.only_pragma:
        #     obj = {'enc_ptype': enc_ptype}
        # else:
        obj = {'enc_ntype': enc_ntype, 'enc_ptype': enc_ptype,
            'enc_itype': enc_itype, 'enc_ftype': enc_ftype,
            'enc_btype': enc_btype, 
            'enc_ftype_edge': enc_ftype_edge, 'enc_ptype_edge': enc_ptype_edge}
        p = ENCODER_PATH
        # if FLAGS.encoder_path == None:
        save(obj, p)
        
        if FLAGS.pragma_uniform_encoder:
            for gname in init_feat_dict:
                init_feat_dict[gname].append(max_pragma_length)
        name = 'pragma_dim'
        # if FLAGS.v2_db:
        #     save(obj_p, join(SAVE_DIR, name))
        #     name += '_v2'
        save(init_feat_dict, join(SAVE_DIR, name))
        
        for gname, feat_dim in init_feat_dict.items():
            saver.log_info(f'{gname} has initial dim {feat_dim[0]}')


    rtn = MyOwnDataset()
    return rtn, init_feat_dict


def _get_y(data, target):
    return getattr(data, target.replace('-', '_'))

def print_data_stats(data_loader, tvt):
    nns, ads, ys = [], [], []
    for d in tqdm(data_loader):
        nns.append(d.x.shape[0])
        # ads.append(d.edge_index.shape[1] / d.x.shape[0])
        ys.append(d.y.item())
    print_stats(nns, f'{tvt} number of nodes')
    # print_stats(ads, f'{tvt} avg degrees')
    plot_dist(ys, f'{tvt} ys', saver.get_log_dir(), saver=saver, analyze_dist=True, bins=None)
    saver.log_info(f'{tvt} ys', Counter(ys))


def load_all_gs(remove_all_pragma_nodes):
    rtn = []
    for gexf_file in tqdm(GEXF_FILES[0:]):  # TODO: change for partial/full data
        g = nx.read_gexf(gexf_file)
        rtn.append(g)
        if remove_all_pragma_nodes:
            before = g.number_of_nodes()
            nodes_to_remove = []
            for node, ndata in g.nodes(data=True):
                if 'pragma' in ndata['full_text']:
                    nodes_to_remove.append(node)
            g.remove_nodes_from(nodes_to_remove)
            print(f'Removed {len(nodes_to_remove)} pragma nodes;'
                  f' before {before} now {g.number_of_nodes}')
    return rtn


def load_encoders():
    from utils import load
    rtn = load(ENCODER_PATH, saver.logdir)
    return rtn

def find_pragma_node(g, nid):
    pragma_nodes = {}
    for neighbor in g.neighbors(nid):
        for pragma in ['pipeline', 'parallel', 'tile']:
            if g.nodes[neighbor]['text'].lower() == pragma:
                pragma_nodes[pragma] = neighbor
                break
    
    return pragma_nodes


def get_pragma_numeric(pragma_text, point, pragma_type):
    t_li = pragma_text.split(' ')
    reduction = 0
    for i in range(len(t_li)):
        if 'REDUCTION' in t_li[i].upper(): 
            reduction = 1
        elif 'AUTO{' in t_li[i].upper():
            # print(t_li[i])
            auto_what = _in_between(t_li[i], '{', '}')
            numeric = point[auto_what]
            if type(numeric) is not int: ## '', 'off', 'flatten'
                assert pragma_type.lower() == 'pipeline'
                if numeric == 'flatten':
                    numeric = 10
                elif numeric == 'off':
                    numeric = 1
                else:
                    numeric = 5
    if FLAGS.log_num:
        assert numeric >= .9
        numeric = np.log2(numeric)
    return reduction, numeric

def fill_pragma_vector(g, neighbor_pragmas, pragma_vector, point, node):
    '''
        # for each node, a vector of [tile factor, pipeline type, parallel type, parallel factor] 
        # pipeline type: 1: off, 5: cg, 10: flatten
        # parallel type: 1: normal, 2: reduction
        # if no pragma assigned to node, a vector of [0, 0, 0, 0]
    '''
    vector_id = {'pipeline': 1, 'parallel': 3, 'tile': 0}
    for pragma in ['pipeline', 'parallel', 'tile']:
        if pragma in neighbor_pragmas:
            nid = neighbor_pragmas[pragma]
            pragma_text = g.nodes[nid]['full_text']
            reduction, numeric = get_pragma_numeric(pragma_text, point, pragma_type=pragma)
            pragma_vector[vector_id[pragma]] = numeric
            if pragma == 'parallel':
                if reduction == 0:
                    pragma_vector[vector_id[pragma] - 1] = 1
                else:
                    pragma_vector[vector_id[pragma] - 1] = 2
    # saver.log_info(f'point: {point}')
    # saver.log_info(f'{node}, {pragma_vector}')
    return pragma_vector


def encode_g_torch(g, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype, device=FLAGS.device):
    raise NotImplementedError()
    x_dict = _encode_X_dict(g, ntypes=None, ptypes=None, numerics=None, itypes=None, eftypes=None, btypes=None, point=None)

    X = _encode_X_torch(x_dict, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype)

    edge_index = create_edge_index(g, device)

    return X, edge_index


def _encode_X_dict(g, ntypes=None, ptypes=None, numerics=None, itypes=None, ftypes=None, btypes=None, point=None, device=FLAGS.device, force_keep_pragma_attribute=False):
    assert not force_keep_pragma_attribute
    X_ntype = [] # node type <attribute id="3" title="type" type="long" />
    X_ptype = [] # pragma type
    X_numeric = []
    X_itype = [] # instruction type (text) <attribute id="2" title="text" type="string" />
    X_ftype = [] # function type <attribute id="1" title="function" type="long" />
    X_btype = [] # block type <attribute id="0" title="block" type="long" />
    X_contextnids = [] # 0 or 1 showing context node
    X_pragmanids = [] # 0 or 1 showing pragma node
    X_pseudonids = [] # 0 or 1 showing pseudo node
    X_icmpnids = [] # 0 or 1 showing icmp node
    ## for pragma as MLP
    X_pragma_per_node = [] # for each node, a vector of [tile factor, pipeline type, parallel type, parallel factor] 
                           # pipeline type: 1: off, 5: cg, 10: flatten
                           # parallel type: 1: normal, 2: reduction
                           # if no pragma assigned to node, a vector of [0, 0, 0, 0]
    X_pragmascopenids = [] # 0 or 1 showing if previous vector is all zero or not
    
    
      
    for nid, (node, ndata) in enumerate(g.nodes(data=True)):  # TODO: node ordering
        # print(node['type'], type(node['type']))
        assert nid == int(node), f'{nid} {node}'
        # print(node['type'], type(node['type']))
        if ntypes is not None:
            ntypes[ndata['type']] += 1
        if itypes is not None:
            itypes[ndata['text']] += 1
        if btypes is not None:
            btypes[ndata['block']] += 1
        if ftypes is not None:
            ftypes[ndata['function']] += 1
            
        pragma_vector = [0, 0, 0, 0]
        if 'pseudo' in ndata['text']:
            X_pseudonids.append(1)
            ## for pragma as MLP
            if FLAGS.pragma_scope == 'block':
                ## check if the block incules any pragma nodes
                neighbor_pragmas = find_pragma_node(g, node)
                if len(neighbor_pragmas) == 0:
                    X_pragmascopenids.append(0)
                else:
                    X_pragmascopenids.append(1)
                    pragma_vector = fill_pragma_vector(g, neighbor_pragmas, pragma_vector, point, node)
            else: ## other pragma scopes are not implemented yet
                raise NotImplementedError()
        else:
            X_pseudonids.append(0)
            X_pragmascopenids.append(0)
        ## for pragma as MLP: a vector of [tile factor, pipeline type, parallel type, parallel factor]
        X_pragma_per_node.append(pragma_vector)

        numeric = 0

        if 'full_text' in ndata and 'icmp' in ndata['full_text']:
            cmp_t = ndata['full_text'].split(',')[-1]
            cmp_t = cmp_t.strip()
            if cmp_t.isdigit():
                cmp_t = eval(cmp_t)
                # saver.log_info(cmp_t)
                numeric = cmp_t
                if FLAGS.log_num:
                    numeric = np.log2(numeric)
                X_icmpnids.append(1)
            else:
                X_icmpnids.append(0)
                pass
        else:
            X_icmpnids.append(0)

        if 'full_text' in ndata and 'pragma' in ndata['full_text']:
            # print(ndata['content'])
            p_text = ndata['full_text'].rstrip()
            assert p_text[0:8] == '#pragma '
            p_text_type = p_text[8:].upper()

            if _check_any_in_str(NON_OPT_PRAGMAS, p_text_type):
                p_text_type = 'None'
            else:
                if _check_any_in_str(WITH_VAR_PRAGMAS, p_text_type):
                    # HLS DEPENDENCE VARIABLE=CSIYIY ARRAY INTER FALSE
                    # HLS DEPENDENCE VARIABLE=<> ARRAY INTER FALSE
                    t_li = p_text_type.split(' ')
                    for i in range(len(t_li)):
                        if 'VARIABLE=' in t_li[i]:
                            t_li[i] = 'VARIABLE=<>'
                        elif 'DEPTH=' in t_li[i]:
                            t_li[i] = 'DEPTH=<>'  # TODO: later add back
                        elif 'DIM=' in t_li[i]:
                            numeric = int(t_li[i][4:])
                            t_li[i] = 'DIM=<>'
                        elif 'LATENCY=' in t_li[i]:
                            numeric = int(t_li[i][8:])
                            t_li[i] = 'LATENCY=<>'
                    p_text_type = ' '.join(t_li)

                pragma_shortened = []
                if point is not None:
                    t_li = p_text_type.split(' ')
                    skip_next_two = 0
                    for i in range(len(t_li)):
                        if skip_next_two == 2:
                            if t_li[i] == '=':
                                skip_next_two = 1
                                continue
                            else:
                                skip_next_two = 0
                        elif skip_next_two == 1:
                            skip_next_two = 0
                            continue
                        if 'REDUCTION' in t_li[i]: ### NEW: use one type for all reductions (previously reduction=D and reduction=C were different)
                            # saver.info(t_li[i])
                            if FLAGS.keep_pragma_attribute or force_keep_pragma_attribute: ## see reduction as a different kind of parallelization
                                pragma_shortened.append('REDUCTION')
                            skip_next_two = 2
                        # elif 'PARALLEL' in t_li[i]:
                        #     pragma_shortened.append('PRALLEL REDUCTION')
                        elif not (FLAGS.keep_pragma_attribute or force_keep_pragma_attribute) and 'PIPELINE' in t_li[i]: ## see all the pipeline option as the same
                            pragma_shortened.append(t_li[i])
                            break
                        elif 'AUTO{' in t_li[i]:
                            # print(t_li[i])
                            auto_what = _in_between(t_li[i], '{', '}')
                            numeric = point[auto_what]
                            if type(numeric) is not int:
                                t_li[i] = numeric
                                pragma_shortened.append(numeric)
                                numeric = 0  # TODO: ? '', 'off', 'flatten'
                            else:
                                t_li[i] = 'AUTO{<>}'
                                pragma_shortened.append('AUTO{<>}')
                            break
                        else:
                            pragma_shortened.append(t_li[i])
                    # p_text_type = ' '.join(t_li)
                    # if len(t_li) != len(pragma_shortened): saver.log_info(f'{t_li} vs {pragma_shortened}')
                    p_text_type = ' '.join(pragma_shortened)
                else:
                    assert 'AUTO' not in p_text_type
                # t = ' '.join(t.split(' ')[0:2])
            # print('@@@@@', t)
            if not (FLAGS.keep_pragma_attribute or force_keep_pragma_attribute): ## see all the pragma options as the same
                numeric = 1
            ptype = p_text_type
            X_pragmanids.append(1)
            X_contextnids.append(0)
        else:
            ptype = 'None'
            X_pragmanids.append(0)
            ## exclude pseudo nodes from context nodes
            if 'pseudo' in ndata['text']:
                X_contextnids.append(0)
            else:
                X_contextnids.append(1)
                
        if ptypes is not None:
            ptypes[ptype] += 1
        if numerics is not None:
            numerics[numeric] += 1

        X_ntype.append([ndata['type']])
        X_ptype.append([ptype])
        X_numeric.append([numeric])
        X_itype.append([ndata['text']])
        X_ftype.append([ndata['function']])
        X_btype.append([ndata['block']])
        
    # vname = key

    X_pragma_per_node = transform_X_torch(X_pragma_per_node, device)
    return {'X_ntype': X_ntype, 'X_ptype': X_ptype,
            'X_numeric': X_numeric, 'X_itype': X_itype,
            'X_ftype': X_ftype, 'X_btype': X_btype,
            'X_contextnids': torch.FloatTensor(np.array(X_contextnids)).half(),
            'X_pragmanids': torch.FloatTensor(np.array(X_pragmanids)).half(),
            'X_pragmascopenids': torch.FloatTensor(np.array(X_pragmascopenids)).half(),
            'X_pseudonids': torch.FloatTensor(np.array(X_pseudonids)).half(),
            'X_icmpnids': torch.FloatTensor(np.array(X_icmpnids)).half(),
            'X_pragma_per_node': X_pragma_per_node
            }
    
def _encode_pragma_per_node(G, point, pragma_nid = None, device = FLAGS.device):
    zeros = torch.zeros((G.number_of_nodes(), 4), device=device)
    if pragma_nid == None:
        assert G != None
        pragma_nid = dict()
        for nid, (node, ndata) in enumerate(G.nodes(data=True)):
            assert nid == int(node)
            pragma_vector = torch.tensor([0, 0, 0, 0], device=device)
            if 'pseudo' in ndata['text']:
                neighbor_pragmas = find_pragma_node(G, node)
                if len(neighbor_pragmas) != 0:
                    pragma_vector = fill_pragma_vector(G, neighbor_pragmas, pragma_vector, point, node)
                zeros[nid] = pragma_vector
                pragma_nid[nid] = neighbor_pragmas
    else:
        for k, v in pragma_nid.items():
            pragma_vector = torch.tensor([0,0,0,0], device=device)
            pragma_vector = fill_pragma_vector(G, v, pragma_vector, point, k)
            zeros[k] = pragma_vector
    return zeros, pragma_nid


def transform_X_torch(X, device=FLAGS.device):
    X = torch.FloatTensor(np.array(X))
    X = coo_matrix(X)
    X = _coo_to_sparse(X, device)
    X = X.to_dense()
    # print(torch.max(X))
    return X

def _encode_X_torch(x_dict, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype, device=FLAGS.device):
    """
    x_dict is the returned dict by _encode_X_dict()
    """
    X_ntype = enc_ntype.transform(x_dict['X_ntype'])
    X_ptype = enc_ptype.transform(x_dict['X_ptype'])
    X_itype = enc_itype.transform(x_dict['X_itype'])
    X_ftype = enc_ftype.transform(x_dict['X_ftype'])
    X_btype = enc_btype.transform(x_dict['X_btype'])

    X_numeric = x_dict['X_numeric']
    # print(len(enc_ntype.categories_[0]))
    # print(len(X_numeric))
    # saver.log_info(X_ntype.shape(0), X_ptype.shape(0), X_itype.shape(0), X_ftype.shape(0), X_btype.shape(0)) #X_numeric.shape(0))
    if FLAGS.no_pragma:
        X = X_ntype
        X = X.toarray()
        X = torch.FloatTensor(X)
    else:
        X = hstack((X_ntype, X_ptype, X_numeric, X_itype, X_ftype, X_btype))
        X = _coo_to_sparse(X, device)
        X = X.to_dense()

    return X




def _encode_edge_dict(g, ftypes=None, ptypes=None):
    X_ftype = [] # flow type <attribute id="5" title="flow" type="long" />
    X_ptype = [] # position type <attribute id="6" title="position" type="long" />    
      
    for nid1, nid2, edata in g.edges(data=True):  # TODO: node ordering
        X_ftype.append([edata['flow']])
        X_ptype.append([edata['position']])

    return {'X_ftype': X_ftype, 'X_ptype': X_ptype}

    
def _encode_edge_torch(edge_dict, enc_ftype, enc_ptype, device=FLAGS.device):
    """
    edge_dict is the dictionary returned by _encode_edge_dict
    """
    X_ftype = enc_ftype.transform(edge_dict['X_ftype'])
    X_ptype = enc_ptype.transform(edge_dict['X_ptype'])

    if FLAGS.encode_edge_position:
        X = hstack((X_ftype, X_ptype), format='coo')
    else:
        X = coo_matrix(X_ftype)
    X = _coo_to_sparse(X, device)
    X = X.to_dense().half()

    return X
        

def _in_between(text, left, right):
    # text = 'I want to find a string between two substrings'
    # left = 'find a '
    # right = 'between two'
    return text[text.index(left) + len(left):text.index(right)]


def _check_any_in_str(li, s):
    for li_item in li:
        if li_item in s:
            return True
    return False

import time
def create_edge_index(g, device=FLAGS.device, redundant=True):
    assert redundant == True
    if redundant:
        g = nx.convert_node_labels_to_integers(g, ordering='sorted')
        vis_edge = set()
        es = list(g.edges)
        cnt_remove = 0
        for e in es:
            if len(e) == 3:
                if e[0:2] in vis_edge:
                    # print(f'Remove {e[0]}, {e[1]}, {e[2]}')
                    g.remove_edge(e[0], e[1])
                    cnt_remove += 1
                else:
                    vis_edge.add(e[0:2])

    # if cnt_remove > 0:
    #     print(f'[WARNING] remove {cnt_remove} edge')
    # edge_index = torch.LongTensor(list(g.edges)).t().contiguous().to(device)
    edge_index = torch.tensor(list(g.edges), dtype=torch.long, device=device).t().contiguous()
    if edge_index.shape[0] != 2:
        edge_index = edge_index[0:2, :]
    return edge_index


def _coo_to_sparse(coo, device=FLAGS.device):
    values = coo.data
    indices = np.vstack((coo.row, coo.col))

    i = torch.LongTensor(indices).to(device)
    v = torch.FloatTensor(values).to(device)
    shape = coo.shape

    rtn = torch.sparse.FloatTensor(i, v, torch.Size(shape))
    return rtn


def _check_prune_non_pragma_nodes(g):
    if FLAGS.only_pragma:
        to_remove = []
        for node, ndata in g.nodes(data=True):
            x = ndata.get('full_text')
            if x is None:
                x = ndata['type']
            if type(x) is not str or (not 'Pragma' in x and not 'pragma' in x):
                to_remove.append(node)
        before = g.number_of_nodes()
        g.remove_nodes_from(to_remove)
        saver.log_info(f'Removed {len(to_remove)} non-pragma nodes from G -'
                       f'- {before} to {g.number_of_nodes()}')
        assert g.number_of_nodes() + len(to_remove) == before
    return g
