from numpy import polymul
from src.utils import get_user, get_host, get_src_path, get_root_path
### round 2 logs: v20 results
### round 12 logs: v18 results

import argparse
import torch
from glob import iglob
from os.path import join
from dataclasses import dataclass

decoder_arch = []

parser = argparse.ArgumentParser(add_help=False)
# TASK = 'class'
TASK = 'regression'
# TASK = 'rl'
parser.add_argument('--task', default=TASK)

SUBTASK = 'dse'
# SUBTASK = 'visualization'
# SUBTASK = 'inference'
# SUBTASK = 'train'
# SUBTASK = 'other'
# SUBTASK = 'draft'
# SUBTASK = 'cal_distance'
# SUBTASK = 'vis+inf'
parser.add_argument('--subtask', default=SUBTASK)
parser.add_argument('--plot_dse', default=False)

######################## logging ########################
_dont_save = True
parser.add_argument('--dont_save', default=_dont_save)


#################### visualization ####################
parser.add_argument('--vis_per_kernel', default=True) ## only tsne visualization for now 


######################## data ########################

TARGETS = ['perf', 'quality', 'util-BRAM', 'util-DSP', 'util-LUT', 'util-FF',
           'total-BRAM', 'total-DSP', 'total-LUT', 'total-FF']

MACHSUITE_KERNEL = ['aes', 'gemm-blocked', 'gemm-ncubed', 'spmv-crs', 'spmv-ellpack', 'stencil',
                    'nw', 'md', 'stencil-3d']
# poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'bicg-large', 'doitgen', 
#                 'gemm-p', 'gemm-p-large', 'correlation', 
#                'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'seidel-2d', 'symm', 
#                'symm-opt', 'syr2k', 'trmm', 'trmm-opt', 'atax-medium', 'gesummv-medium', 
#                'symm-opt-medium'
#             ] # rem: gemver, gemver-medium, covariance, fdtd-2d, fdtd-2d-large, syrk
# poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'covariance', 'doitgen', 
#                'doitgen-red', 'fdtd-2d', 'fdtd-2d-large', 'gemm-p', 'gemm-p-large', 'gemver', 
#                'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'symm', 
#                'symm-opt', 'syr2k', 'trmm', 'trmm-opt', 'mvt-medium', 'correlation',
#                'atax-medium', 'gesummv-medium', 'symm-opt-medium',
#                'gemver-medium'] # rem: bicg, bicg-large, seidel-2d, syrk
poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'bicg-large', 'covariance', 'doitgen', 
               'doitgen-red', 'fdtd-2d', 'fdtd-2d-large', 'gemm-p', 'gemm-p-large', 'gemver', 
               'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'seidel-2d', 'symm', 
               'symm-opt', 'syrk', 'syr2k', 'trmm', 'trmm-opt', 'mvt-medium', 'correlation',
               'atax-medium', 'bicg-medium', 'gesummv-medium', 'symm-opt-medium',
               'gemver-medium']
# poly_KERNEL = []
# poly_KERNEL = ['doitgen-red', 'doitgen', 'atax', 'symm', '2mm', 'bicg', 'correlation', 'covariance']
# poly_KERNEL = ['2mm', 'bicg', 'correlation', 'covariance', 'symm-opt', 'mvt']
# poly_KERNEL = ['gemver', 'gemm-p', 'trmm', 'trmm-opt', 'symm-opt', 'mvt']
# poly_KERNEL = ['gesummv', 'syrk', 'bicg-large', 'gemm-p-large', 'fdtd-2d-large']
# poly_KERNEL = ['gemm-p-large', 'fdtd-2d-large', 'gemm-p', 'trmm', 'trmm-opt', '2mm', 'bicg', 'correlation', 'covariance', 'symm-opt', 'mvt']
# poly_KERNEL = ['atax', 'bicg', 'doitgen', 'gesummv',
#                 '2mm', 'mvt', 'gemver', 'gemm-p']

simple_KERNEL = ['reduction', 'relu', 'mat-vec-sub-add', 'vec-mul-add-dep',
                '3vec-mul-add-stencil', 'messy-stencil-1d', 'unrolled-vec-add',
                'dot', '3vec-mul-element', '3vec-add-element', 'vec-mul', 'max-vec',
                'vec-mul-add', '2vec-add', 'cond-vec-mul-add', 'non-zero-vec'] # '1d-conv

# FORCE_REGEN = True
FORCE_REGEN = False
parser.add_argument('--force_regen', type=bool, default=FORCE_REGEN)

parser.add_argument('--min_allowed_latency', type=float, default=100.0) ## if latency is less than this, prune the point (used when synthesis is not valid)
EPSILON = 1e-3
parser.add_argument('--epsilon', default=EPSILON)
NORMALIZER = 1e7
parser.add_argument('--normalizer', default=NORMALIZER)
parser.add_argument('--util_normalizer', default=1)
# MAX_NUMBER = 3464510.00
MAX_NUMBER = 1e10
parser.add_argument('--max_number', default=MAX_NUMBER)

norm = 'speedup-log2' # 'const' 'log2' 'speedup' 'off' 'speedup-const' 'const-log2' 'none' 'speedup-log2'
parser.add_argument('--norm_method', default=norm)
parser.add_argument('--new_speedup', default=True) # new_speedup: same reference point across all, 
                                                    # old_speedup: base is the longest latency and different per kernel

_invalid = False
parser.add_argument('--invalid', type = bool, default=_invalid) # False: do not include invalid designs

parser.add_argument('--encode_log', type = bool, default=False)
v2_db = True # True: v20 database, False: v18 database
# v2_db = False
parser.add_argument('--v2_db', default=v2_db) # if set to true uses the db of the new version of the tool: 2020.2
v21 = True
# v21 = False
parser.add_argument('--v21', default=v21)
if v2_db:
    parser.add_argument('--only_common_db', default=False)
    parser.add_argument('--test_extra', default=False)
    parser.add_argument('--only_new_points', default=False)
round_num = 3 if v2_db else 13
if v2_db and v21:
    round_num = 1
parser.add_argument('--round_num', default=round_num) ## round number of retraining after data augmentation with DSE
parser.add_argument('--get_forgetting_examples', default=False)

test_kernels = None
# test_kernels = ['jacobi-1d', '3mm', 'fdtd-2d', 'gemm-p', 'gemver']
# if v2_db:
#     test_kernels = ['symm', 'fdtd-2d-large', 'trmm-opt']
# else:
#     test_kernels = ['fdtd-2d', 'jacobi-2d', 'trmm-opt'] ## to be used to split the kernels between training and testing. this is the list of test kernels
parser.add_argument('--test_kernels', default=test_kernels)
target_kernel = None
# target_kernel = 'gemm-blocked'
parser.add_argument('--target_kernel', default=target_kernel)
if target_kernel == None:
    all_kernels = True
else:
    all_kernels = False
parser.add_argument('--all_kernels', type = bool, default=all_kernels)
keys_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/src/logs/regression_train_whole-machsuite-poly_2022-04-14T17-22-34.633421-MAML-9-seed100-sp-cos'
parser.add_argument('--keys_path', default=keys_path)
parser.add_argument('--sample_finetune', type = bool, default=False)

# dataset = 'vitis-cnn'
# dataset = 'machsuite'
# dataset = 'programl-machsuite'
dataset = 'programl' # machsuite and poly in GNN-DSE
# dataset = 'simple-programl' # lorenzo's dataset
parser.add_argument('--dataset', default=dataset)

benchmark = ['machsuite', 'poly']
if dataset == 'simple-programl':
    benchmark = ['simple']
parser.add_argument('--benchmarks', default=benchmark)


# tag = 'only-vitis'
# tag = 'stencil'
# tag = 'gemm-ncubed'
# tag = 'whole-machsuite'
# tag = 'whole-machsuite-poly'
tag = 'whole'
if dataset == 'simple-programl':
    tag = 'simple'
parser.add_argument('--tag', default=tag)


##################### graph type #####################
dac_baseline = False
# graph_type = '' # original DAC22 graph
# graph_type = 'extended-pseudo-block-base' ## check that the connected ones are not used
# graph_type = 'extended-pseudo-block-connected'
graph_type = 'extended-pseudo-block-connected-hierarchy'
parser.add_argument('--graph_type', default=graph_type)
pragma_as_MLP, type_parallel, type_merge = True, '2l', '2l'
gnn_layer_after_MLP = 1
pragma_MLP_hidden_channels, merge_MLP_hidden_channels = None, None

################## iccad models ##################
if dac_baseline:
    gae_T, P_use_all_nodes, separate_pseudo, separate_T, dropout, num_features, edge_dim = False, True, False, False, 0, 154, 7
    model_ver = 'DAC22'
elif 'hierarchy' not in graph_type: ## separate_PT original graph
    gae_T, P_use_all_nodes, separate_pseudo, separate_T, dropout, num_features, edge_dim = True, True, False, True, 0.1, 154, 7
    model_ver = 'original-PT'
else:
    if pragma_as_MLP:
        if gnn_layer_after_MLP == 1: model_ver = 'best_post-gnn-2l'
        
        if type_parallel == '2l': pragma_MLP_hidden_channels = '[in_D // 2]'
        elif type_parallel == '3l': pragma_MLP_hidden_channels = '[in_D // 2, in_D // 4]'
        
        if type_merge == '2l': merge_MLP_hidden_channels = '[in_D // 2]'
        elif type_merge == '3l': merge_MLP_hidden_channels = '[in_D // 2, in_D // 4]'
        else: raise NotImplementedError()
        gae_T, P_use_all_nodes, separate_pseudo, separate_T, dropout, num_features, edge_dim = False, True, True, False, 0.1, 153, 335
    else:
        gae_T, P_use_all_nodes, separate_pseudo, separate_T, dropout, num_features, edge_dim = True, False, False, True, 0.1, 156, 335   
        model_ver = 'hierarchy-PT'
        

################ one-hot encoder #################
encoder_path = None
encode_edge_position = True
fixed_path = False
use_encoder = True # if v2_db else False
if use_encoder:
    if fixed_path:
        if 'hierarchy' in graph_type:
            ## GAE pragma dim and hierarchy graph - round3 db sep 9th 2022 also round4/5/6/7/8
            encoder_path = f'/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round8-db-extended-pseudo-block-connected-hierarchy-regression_edge-position-{encode_edge_position}_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
            
            if len(poly_KERNEL) > 8:
                encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round10-db-extended-pseudo-block-connected-hierarchy-regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
        elif 'connected' in graph_type:
            ## GAE pragma dim and extended graph block connected - block IDs saved - db of extended-graph DSE added round 2 - Aug 18th 2022
            encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round8-db-extended-pseudo-block-connected-regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
        else:
            ## GAE pragma dim - original graph
            encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round8-db--regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
            if len(poly_KERNEL) > 20:
                if 'jc8' in get_host():
                    encoder_path = '/home/atefehSZ/github-software-gnn/software-gnn/save/programl/round12-icmp-feb-db--regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
                else:
                    encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round12-icmp-feb-db--regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
            elif len(poly_KERNEL) > 8:
                encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/programl/round10-db--regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole-machsuite-poly_perfutil-DSPutil-BRAMutil-LUTutil-FF'
        if encoder_path:
            encoder_path += '/encoders.klepto'
    else:
        # includes = ['round12-40kernel', f'MLP-{pragma_as_MLP}', graph_type, 'encoders']
        if pragma_as_MLP: includes = ['MLP']
        elif 'hierarchy' not in graph_type: includes = ['original']
        else: includes = ['hierarchy']
        encoder_path_list = [f for f in iglob(join(get_root_path(), 'models', '**'), recursive=True) if f.endswith('.klepto') and all(k in f for k in includes) and 'class' not in f]
        # assert len(encoder_path_list) == 1, print(encoder_path_list)
        #!!!!!!!!! dzj: unsafe
        encoder_path = encoder_path_list[0]
        


## simple programl - initial graph
# encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/simple-programl/simple-programl--regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_simple_perfutil-DSPutil-BRAMutil-LUTutil-FF/encoders.klepto'
# encoder_path = '/home/zijd/dse/software-gnn/save/programl/round12-icmp-feb-db--regression_edge-position-True_norm_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_whole_perfutil-DSPutil-BRAMutil-LUTutil-FF/encoders.klepto'
# encoder_path = None
# encoder_path = '/home/zijd/dse/software-gnn/src/pretrained/new_class_encoder.klepto'
parser.add_argument('--encoder_path', default=encoder_path)


################ model architecture #################
## self-supervised learning
SSL = False
parser.add_argument('--SSL', default = SSL)

## edge attributes
parser.add_argument('--encode_edge', type=bool, default=True)
parser.add_argument('--encode_edge_position', type=bool, default=encode_edge_position)

num_layers = 6
parser.add_argument('--num_layers', type=int, default=num_layers)  ### prev num_layer: 6
## after uniform type for all parallel reductions: 136, without pseudo node: 134
## simple-programl: 103 sept22
parser.add_argument('--num_features', default=num_features) # before 4-23: 142, all-data-all-dac: 139) first week of june 2022: 143, last week of july 2022: 145
## 22 kernels, Nov 1st: 142
parser.add_argument('--edge_dim', default=edge_dim) ## 299/298/7 for hierarchy/extended/original round 3

parser.add_argument('--no_pragma', type=bool, default=False)

multi_target = ['perf', 'util-LUT', 'util-FF', 'util-DSP', 'util-BRAM']
if SUBTASK == 'class':
    multi_target = ['perf']
# multi_target = ['perf'] 
## DAC'22
# multi_target = ['perf', 'util-LUT', 'util-FF', 'util-DSP']
parser.add_argument('--target', default=multi_target)
parser.add_argument('--MLP_common_lyr', default=0)

parser.add_argument('--no_graph', type = bool, default=False )
parser.add_argument('--only_pragma', type = bool, default=False )
# gnn_type = 'gcn'
# gnn_type = 'gat'
gnn_type = 'transformer'
parser.add_argument('--gnn_type', type=str, default=gnn_type)
parser.add_argument('--dropout', type=float, default=dropout)

spectral = -1
parser.add_argument('--spectral', type=float, default=spectral)

# jkn_mode = 'lstm'
jkn_mode = 'max'
parser.add_argument('--jkn_mode', type=str, default=jkn_mode)
parser.add_argument('--jkn_enable', type=bool, default=True)
node_attention = True
parser.add_argument('--node_attention', type=bool, default=node_attention)
if node_attention:
    parser.add_argument('--node_attention_MLP', type=bool, default=False)

    separate_P = True
    parser.add_argument('--separate_P', type=bool, default=separate_P)
    separate_icmp = False
    parser.add_argument('--separate_icmp', type=bool, default=separate_icmp)
    # separate_T = True
    parser.add_argument('--separate_T', type=bool, default=separate_T)
    # separate_pseudo = False
    parser.add_argument('--separate_pseudo', type=bool, default=separate_pseudo)

    if separate_P:
        # P_use_all_nodes = False
        parser.add_argument('--P_use_all_nodes', type=bool, default=P_use_all_nodes)
    if separate_T:
        encoder = False
        if dataset == 'simple-programl' or target_kernel is not None or encoder_path:
            encoder = False
        parser.add_argument('--pragma_encoder', type=bool, default=encoder)
    parser.add_argument('--pragma_uniform_encoder', type=bool, default=True)
    
## graph auto encoder
# gae_T = True
parser.add_argument('--gae_T', default = gae_T)
gae_P = False
parser.add_argument('--gae_P', default = gae_P)
if gae_P:
    parser.add_argument('--input_encode', default = False)
    # d_type = 'None'
    # d_type = 'type1'
    d_type = 'type1'
    parser.add_argument('--decoder_type', default = d_type)

if pragma_as_MLP:
    assert graph_type == 'extended-pseudo-block-connected-hierarchy'
parser.add_argument('--gnn_layer_after_MLP', default=gnn_layer_after_MLP) ## number of message passing layers after MLP (pragma as MLP)
parser.add_argument('--pragma_as_MLP', default=pragma_as_MLP)
pragma_as_MLP_list = ['tile', 'pipeline', 'parallel']
parser.add_argument('--pragma_as_MLP_list', default=pragma_as_MLP_list)
pragma_scope = 'block'
parser.add_argument('--pragma_scope', default=pragma_scope)
keep_pragma_attribute = False if pragma_as_MLP else True
# keep_pragma_attribute = True # !!!! for testing purpose
parser.add_argument('--keep_pragma_attribute', default=keep_pragma_attribute)
pragma_order = 'sequential'
pragma_order = 'parallel_and_merge'
parser.add_argument('--pragma_order', default=pragma_order)
# pragma_MLP_hidden_channels = None
# pragma_MLP_hidden_channels = '[in_D // 2]'
parser.add_argument('--pragma_MLP_hidden_channels', default=pragma_MLP_hidden_channels)
# merge_MLP_hidden_channels = '[in_D // 2]'
parser.add_argument('--merge_MLP_hidden_channels', default=merge_MLP_hidden_channels)


model_path = None
model_path_list = []
use_pretrain = True # False if (not FT_extra or SUBTASK != 'dse') else True
# use_pretrain = False
if use_pretrain:
    if 'hierarchy' in graph_type:
        base_path = 'logs/auto-encoder/hierarchy/**'
        base_path = 'logs/auto-encoder/iccad/**'
    elif 'connected' in graph_type:
        base_path = 'logs/auto-encoder/extended-graph-db/**'
    else:
        base_path = 'logs/auto-encoder/all-data-sepPT/**'    
        base_path = 'logs/auto-encoder/iccad/**'    
        # base_path = 'logs/auto-encoder/**'    
        # base_path = 'logs/dac/**'
    model_tag = 'val_model'
    # if not separate_T: keyword = 'only-P'
    # elif P_use_all_nodes: keyword = 'with-mutual'
    # else: keyword = 'no-mutual'
    keyword, exclude_keyword = 'MSE', 'DAC22'
    if dac_baseline: keyword, exclude_keyword = 'DAC22', 'PT'
    elif 'hierarchy' in graph_type: 
        keyword, exclude_keyword = 'MSE', 'RMSE'
        # if v2_db or (pragma_as_MLP and pragma_order == 'sequential'): keyword, exclude_keyword = 'MSE', 'RMSE'
    
    if graph_type == 'extended-pseudo-block-connected-hierarchy': 
        if pragma_as_MLP: graph = pragma_order
        else: graph = 'hierarchy'
    elif graph_type == '': graph = 'orig'
    else: raise RuntimeError()
    
    excludes = ['dse', 'inference', 'visualization', 'vis+inf', 'bad', 'higher-loss', 'epoch10', 'gradually', 'icmp-vector', 'no-util', 'u5', exclude_keyword]
    includes = [f'round12-40kernel', f'position-{encode_edge_position}', f'{num_layers}L', f'gae-T-{gae_T}-gae-P-{gae_P}', graph, keyword, 'scheduler', 'gnn-after'] # 'sepPT', f'{num_layers}L #, 'fine-tune'] #, 'epoch10-only-gemm'] ## higher loss on gemm has lower loss on round9 test set
    if pragma_as_MLP:
        if type_parallel == '3l': includes.append('3l-parallel')
        elif type_parallel != '2l': 
            excludes.append('2l-parallel')
            if pragma_order == 'parallel_and_merge': includes.append('dropout0')
        else: includes.append('2l-parallel')

    if SUBTASK == 'dse' or 'vis' in SUBTASK or v2_db or 'cal' in SUBTASK:
        keyword =  'v20' if v2_db else 'v18'
        includes = [keyword, model_ver]
        excludes = ['class']

    model_tag = 'val_model'
    for i in [0, 1, 2, 3]:
        # if SUBTASK == 'dse':
        #     keyword = f'freeze{i}'
        # elif SUBTASK == 'inference':
        #     keyword = f'-{i}.'
        #     keyword = f''
        # else:
        #     keyword = ''
        model_base_path = join(get_src_path(), base_path)
        if SUBTASK == 'dse' or 'vis' in SUBTASK or 'other' in SUBTASK or v2_db  or 'cal' in SUBTASK: model_base_path = join(get_root_path(), 'models/**')
        model = [f for f in iglob(model_base_path, recursive=True) if f.endswith('.pth') and model_tag in f and all(k not in f for k in excludes) and all(k in f for k in includes)]
        # print(model)
        assert len(model) == 1
        model_path = model[0]
        if SUBTASK == 'dse': # or SUBTASK == 'inference':
            model_path_list.append(model_path)
        else:
            model_path_list.append(model_path)
            break

if model_path_list != []:
    model_path = model_path_list
ver_code = 'v20' if v2_db else 'v18'
# model_path = f'/home/zijd/dse/software-gnn/models/iccad/{ver_code}/hier_pseudo_split.pth'
parser.add_argument('--model_path', default=model_path) ## list of models when used in DSE, if more than 1, ensemble inference must be on

ensemble = 0
ensemble_weights = None
# if model_path is not None:
#     ensemble = len(model_path)
#     ensemble_weights = [0.8447304,  -0.05980476,  0.1999986,   0.02298108]
parser.add_argument('--ensemble', type=int, default=ensemble)
parser.add_argument('--ensemble_weights', default=ensemble_weights)
class_model_path = None
if SUBTASK == 'dse':
    keyword =  'v20' if v2_db else 'v18'
    includes = [keyword, model_ver, 'class']
    model = [f for f in iglob(model_base_path, recursive=True) if f.endswith('.pth') and model_tag in f and all(k in f for k in includes)]
    assert len(model) == 1
    class_model_path = model[0]
# class_model_path = f'/home/zijd/dse/software-gnn/models/iccad/{ver_code}/class/hier_pseudo_split.pth'
parser.add_argument('--class_model_path', default=class_model_path)



################ transfer learning #################
feature_extract = False
parser.add_argument('--feature_extract', default=feature_extract) # if set to true GNN encoder (or part of it) will be fixed and only MLP will be trained
if feature_extract:
    parser.add_argument('--random_MLP', default=False) # true: initialize MLP randomly
fix_gnn_layer = None ## if none, all layers will be fixed
fix_gnn_layer = 1 ## number of gnn layers to freeze, feature_extract should be set to True
parser.add_argument('--fix_gnn_layer', default=fix_gnn_layer) # if not set to none, feature_extract should be True
FT_extra = False
parser.add_argument('--FT_extra', default=FT_extra) ## fine-tune only on the new data points


################ training details #################
resample = False
val_ratio = 0.05
if resample or FT_extra: val_ratio = 0.1
parser.add_argument('--resample', default=resample) ## when resample is turned on, it will divide the dataset in round-robin and train multiple times to have all the points in train/test set
parser.add_argument('--val_ratio', type=float, default=val_ratio) # ratio of database for validation set

parser.add_argument('--activation', default='elu')     

parser.add_argument('--save_model', type = bool, default=True)

__D = 64
parser.add_argument('--D', type=int, default=__D)

__for_uncertain = False
parser.add_argument('--for_uncertain', type=bool, default=__for_uncertain)

learning_rate = 1e-3
parser.add_argument('--lr', default=learning_rate) ## default=0.001
scheduler, warmup, weight_decay = None, None, 0
scheduler, warmup, weight_decaty = 'cosine', 'linear', 1e-4
parser.add_argument('--weight_decay', default=weight_decay) ## default=0.0001, larger than 1e-4 didn't help original graph P+T
parser.add_argument("--scheduler", default=scheduler)
parser.add_argument("--warmup", default=warmup)

parser.add_argument('--random_seed', default=123, type=int) # default=123
batch_size = 128
# if graph_type != '':
#     batch_size = 32
parser.add_argument('--batch_size', type=int, default=batch_size)

loss = 'MSE' # RMSE, MSE, GNLL: Gaussian negative log likelihood of pytorch (predicting var), myGNLL: my implementation (predicting log_var)
parser.add_argument('--loss', type=str, default=loss) 
## now testing with out dim: 2 and nn.MSEloss, both targets get close to target
beta = 0 if loss != 'myGNLL' else 0.5
parser.add_argument('--beta', default=beta)

if model_path == None:
    if TASK == 'regression':
        if v2_db == False:
            epoch_num = 1500
        else:
            epoch_num = 400
    else:
        epoch_num = 200
else:
    epoch_num = 200
    if FT_extra: epoch_num = 100
if TASK == 'regression':
    epoch_num = 1500
    if resample:
        epoch_num = 200
parser.add_argument('--epoch_num', type=int, default=epoch_num)

# gpu = 2
# device = str('cuda:{}'.format(gpu) if torch.cuda.is_available() and gpu != -1
#              else 'cpu')
device = 0
parser.add_argument('--device', default=device)

cand_devices = [f'cuda:{i}' for i in [0,1,2,3]] if torch.cuda.is_available() else ['cpu']
parser.add_argument('--cand_devices', default=cand_devices)


################# DSE details ##################
explorer = 'exhaustive'
# explorer = 'annealing'
# explorer = 'genetic'
# explorer = 'Q'
# explorer = 'SA'
# explorer = None
# explorer = 'exhaustive-finetune'
parser.add_argument('--explorer', default=explorer)
if explorer == 'annealing':
    parser.add_argument('--init_temp', default = 1000)
    parser.add_argument('--hls_temp_run', default = 10)
parser.add_argument('--dist_parent', default=True)
parser.add_argument('--dist_child', default=True)

model_tag = 'test'
parser.add_argument('--model_tag', default=model_tag)

parser.add_argument('--prune_util', default=True) # only DSP and BRAM
parser.add_argument('--prune_class', default=True)
pids = ['__PARA__L3', '__PIPE__L2', '__PARA__L1', '__PIPE__L0', '__TILE__L2', '__TILE__L0', '__PARA__L2', '__PIPE__L0']
parser.add_argument('--ordered_pids', default=pids)

if TASK == 'rl':
    parser.add_argument('--num_envs', type=int, default=2)


parser.add_argument('--print_every_iter', type=int, default=100)

plot = True
if SSL: plot = False
parser.add_argument('--plot_pred_points', type=bool, default=plot)

"""
Other info.
"""
parser.add_argument('--user', default=get_user())

parser.add_argument('--hostname', default=get_host())

parser.add_argument('--port', default=6380)

"""
For CEM
"""
parser.add_argument('--cem_kernel', default='gemver')
parser.add_argument('--cem_db_id', default=0)
parser.add_argument('--log_num', action=argparse.BooleanOptionalAction, default=False)

# FLAGS = parser.parse_args()
FLAGS = parser.parse_known_args()[0]
# @dataclass
# class Configs:
#     task = TASK
#     subtask = SUBTASK
#     plot_dse = False
#     dont_save = _dont_save
#     force_regen = FORCE_REGEN
#     min_allowed_latency = 100.0
#     epsilon = EPSILON
#     normalizer = NORMALIZER
#     util_normalizer = 1
#     max_number = MAX_NUMBER
#     norm_method = norm
#     new_speedup = True
#     invalid = _invalid
#     encode_log = False
#     v2_db = v2_db
#     only_common_db=False
#     test_extra=False
#     only_new_points=False
#     round_num = round_num
#     get_forgetting_examples = False
#     test_kernels = test_kernels
#     target_kernel = target_kernel
#     all_kernels = all_kernels
#     keys_path = keys_path
#     sample_finetune = False
#     dataset = dataset
#     benchmarks = benchmark
#     tag = tag
#     graph_type = graph_type
#     encoder_path = encoder_path
#     SSL = SSL
#     gae_T = gae_T
#     gae_P = gae_P
#     encode_edge = True
#     encode_edge_position = encode_edge_position
#     num_layers = num_layers
#     num_features = num_features
#     edge_dim = edge_dim
#     no_pragma = False
#     target = multi_target
#     MLP_common_lyr = 0
#     no_graph = False
#     only_pragma = False
#     gnn_type = gnn_type
#     dropout = dropout
#     jkn_mode = jkn_mode
#     jkn_enable = True
#     node_attention = node_attention
#     node_attention_MLP = False
#     separate_P = separate_P
#     separate_icmp = separate_icmp
#     separate_T = separate_T
#     separate_pseudo = separate_pseudo
#     P_use_all_nodes = P_use_all_nodes
#     pragma_encoder = encoder if separate_T else None
#     pragma_uniform_encoder = True
#     gnn_layer_after_MLP = gnn_layer_after_MLP
#     pragma_as_MLP =pragma_as_MLP
#     pragma_as_MLP_list = pragma_as_MLP_list
#     pragma_scope = pragma_scope
#     keep_pragma_attribute = keep_pragma_attribute
#     pragma_order = pragma_order
#     pragma_MLP_hidden_channels = pragma_MLP_hidden_channels
#     merge_MLP_hidden_channels = merge_MLP_hidden_channels
#     model_path = model_path
#     ensemble = ensemble
#     ensemble_weights = ensemble_weights
#     class_model_path = class_model_path
#     feature_extract = feature_extract
#     fix_gnn_layer = fix_gnn_layer
#     FT_extra = FT_extra
#     resample = resample
#     val_ratio = val_ratio
#     activation = 'elu'
#     save_model = True
#     D = 64
#     for_uncertain = False
#     lr = 0.001
#     weight_decay = weight_decay
#     scheduler = scheduler
#     warmup = warmup
#     random_seed = 39
#     batch_size = batch_size
#     loss = loss
#     beta = beta
#     epoch_num = epoch_num
#     device = device
#     cand_devices = cand_devices
#     explorer = explorer
#     dist_parent = True
#     dist_child = True
#     model_tag = model_tag
#     prune_util = True
#     prune_class = True
#     ordered_pids = pids
#     print_every_iter = 100
#     plot_pred_points = plot
#     user = get_user()
#     hostname = get_host()

# FLAGS = Configs