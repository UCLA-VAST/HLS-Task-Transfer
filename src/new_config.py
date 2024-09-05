from numpy import polymul
from utils import get_user, get_host, get_src_path, get_root_path
import argparse
import torch
from glob import iglob
from os.path import join

decoder_arch = []

parser = argparse.ArgumentParser()
# TASK = 'class'
TASK = 'regression'
# TASK = 'rl'
parser.add_argument('--task', default=TASK)

# SUBTASK = 'dse'
SUBTASK = 'visualization'
SUBTASK = 'vis+inf'
SUBTASK = 'inference'
SUBTASK = 'train'
parser.add_argument('--subtask', default=SUBTASK)
parser.add_argument('--plot_dse', default=False)

#################### visualization ####################
parser.add_argument('--vis_per_kernel', default=True) ## only tsne visualization for now 


######################## data ########################

TARGETS = ['perf', 'quality', 'util-BRAM', 'util-DSP', 'util-LUT', 'util-FF',
           'total-BRAM', 'total-DSP', 'total-LUT', 'total-FF']


MACHSUITE_KERNEL = ['aes', 'gemm-blocked', 'gemm-ncubed', 'spmv-crs', 'spmv-ellpack', 'stencil',
                    'nw', 'md', 'stencil-3d']

# poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'bicg-large', 'covariance', 'doitgen', 
#                'doitgen-red', 'fdtd-2d', 'fdtd-2d-large', 'gemm-p', 'gemm-p-large', 'gemver', 
#                'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'seidel-2d', 'symm', 
#                'symm-opt', 'syrk', 'trmm', 'trmm-opt']

poly_KERNEL = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'bicg-large', 'covariance', 'doitgen', 
               'doitgen-red', 'fdtd-2d', 'fdtd-2d-large', 'gemm-p', 'gemm-p-large', 'gemver', 
               'gesummv', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'mvt', 'seidel-2d', 'symm', 
               'symm-opt', 'syrk', 'syr2k', 'trmm', 'trmm-opt', 'mvt-medium', 'correlation',
               'atax-medium', 'bicg-medium', 'gesummv-medium']
# poly_KERNEL = ['atax', 'bicg', 'doitgen', 'gesummv',
#                 '2mm', 'mvt', 'gemver', 'gemm-p']

simple_KERNEL = ['reduction', 'relu', 'mat-vec-sub-add', 'vec-mul-add-dep',
                '3vec-mul-add-stencil', 'messy-stencil-1d', 'unrolled-vec-add',
                'dot', '3vec-mul-element', '3vec-add-element', 'vec-mul', 'max-vec',
                'vec-mul-add', '2vec-add', 'cond-vec-mul-add', 'non-zero-vec'] # '1d-conv


parser.add_argument('--force_regen', type=bool, default=True)

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

parser.add_argument('--invalid', type = bool, default=False ) # False: do not include invalid designs

parser.add_argument('--encode_log', type = bool, default=False)
v2_db = False
parser.add_argument('--v2_db', default=v2_db) # if set to true uses the db of the new version of the tool: 2020.2
if v2_db:
    parser.add_argument('--only_common_db', default=False)
    parser.add_argument('--test_extra', default=False)
    parser.add_argument('--only_new_points', default=False)
round_num = 2 if v2_db else 12
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
tag = 'whole-machsuite-poly'
if dataset == 'simple-programl':
    tag = 'simple'
parser.add_argument('--tag', default=tag)


##################### graph type #####################
graph_type = '' # original DAC22 graph
# graph_type = 'extended-pseudo-block-base' ## check that the connected ones are not used
# graph_type = 'extended-pseudo-block-connected'
# graph_type = 'extended-pseudo-block-connected-hierarchy'
parser.add_argument('--graph_type', default=graph_type)


################ one-hot encoder #################
encoder_path = None
encode_edge_position = True
use_encoder = False
if use_encoder:
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


## simple programl - initial graph
# encoder_path = '/share/atefehSZ/RL/original-software-gnn/software-gnn/save/simple-programl/simple-programl--regression_with-invalid_False-normalization_speedup-log2_no_pragma_False_tag_simple_perfutil-DSPutil-BRAMutil-LUTutil-FF/encoders.klepto'
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
parser.add_argument('--num_features', default=142) # all-data-all-dac: 139) first week of june 2022: 143, last week of july 2022: 145
## 22 kernels, Nov 1st: 142
parser.add_argument('--edge_dim', default=7) ## 299/298/7 for hierarchy/extended/original round 3

parser.add_argument('--no_pragma', type=bool, default=False)

multi_target = ['perf', 'util-LUT', 'util-FF', 'util-DSP', 'util-BRAM']
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
parser.add_argument('--dropout', type=float, default=0.1)

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
    separate_T = True
    parser.add_argument('--separate_T', type=bool, default=separate_T)
    separate_pseudo = False
    parser.add_argument('--separate_pseudo', type=bool, default=separate_pseudo)

    if separate_P:
        P_use_all_nodes = True
        parser.add_argument('--P_use_all_nodes', type=bool, default=P_use_all_nodes)
    if separate_T:
        encoder = False
        if dataset == 'simple-programl' or target_kernel is not None or encoder_path:
            encoder = False
        parser.add_argument('--pragma_encoder', type=bool, default=encoder)
    parser.add_argument('--pragma_uniform_encoder', type=bool, default=True)
    
## graph auto encoder
gae_T = True
parser.add_argument('--gae_T', default = gae_T)
gae_P = False
parser.add_argument('--gae_P', default = gae_P)
if gae_P:
    parser.add_argument('--input_encode', default = False)
    # d_type = 'None'
    # d_type = 'type1'
    d_type = 'type1'
    parser.add_argument('--decoder_type', default = d_type)

pragma_as_MLP = False
if pragma_as_MLP:
    assert graph_type == 'extended-pseudo-block-connected-hierarchy'
parser.add_argument('--pragma_as_MLP', default=pragma_as_MLP)
pragma_as_MLP_list = ['tile', 'pipeline', 'parallel']
parser.add_argument('--pragma_as_MLP_list', default=pragma_as_MLP_list)
pragma_scope = 'block'
parser.add_argument('--pragma_scope', default=pragma_scope)
keep_pragma_attribute = False if pragma_as_MLP else True
parser.add_argument('--keep_pragma_attribute', default=keep_pragma_attribute)
pragma_order = 'sequential'
pragma_order = 'parallel_and_merge'
parser.add_argument('--pragma_order', default=pragma_order)
pragma_MLP_hidden_channels = None
# pragma_MLP_hidden_channels = '[in_D // 2]'
parser.add_argument('--pragma_MLP_hidden_channels', default=pragma_MLP_hidden_channels)
merge_MLP_hidden_channels = '[in_D // 2]'
parser.add_argument('--merge_MLP_hidden_channels', default=merge_MLP_hidden_channels)


model_path = None
model_path_list = []
use_pretrain = False # False if (not FT_extra or SUBTASK != 'dse') else True
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
    excludes = ['dse', 'inference', 'visualization', 'bad', 'higher-loss', 'epoch10', 'gradually', 'icmp-vector', 'no-util', 'u5']
    excludes = ['dse', 'inference', 'visualization', 'vis+inf', 'bad', 'higher-loss', 'epoch10', 'gradually', 'icmp-vector', 'no-util', 'u5', 'run2']
    if not separate_T: keyword = 'only-P'
    elif P_use_all_nodes: keyword = 'with-mutual'
    else: keyword = 'no-mutual'
    if graph_type == 'extended-pseudo-block-connected-hierarchy': graph = 'hierarchy'
    elif graph_type == '': graph = 'orig'
    else: raise RuntimeError()
    includes = [f'round{round_num}', f'position-{encode_edge_position}', f'gae-T-{gae_T}-gae-P-{gae_P}', graph, 'dropout', keyword] # 'sepPT', f'{num_layers}L #, 'fine-tune'] #, 'epoch10-only-gemm'] ## higher loss on gemm has lower loss on round9 test set
    # includes = ['models', 'task-transfer']
    # if FT_extra and SUBTASK != 'train': model_tag = 'train'
    model_tag = 'val_model'
    for i in [0, 1, 2, 3]:
        if SUBTASK == 'dse':
            keyword = f'freeze{i}'
        elif SUBTASK == 'inference':
            keyword = f'-{i}.'
            keyword = f''
        else:
            keyword = ''
        print(keyword)
        model = [f for f in iglob(join(get_src_path(), base_path), recursive=True) if f.endswith('.pth') and model_tag in f and all(k not in f for k in excludes) and all(k in f for k in includes) and keyword in f]
        print(model)
        assert len(model) == 1
        model_path = model[0]
        if SUBTASK == 'dse': # or SUBTASK == 'inference':
            model_path_list.append(model_path)
        else:
            model_path_list.append(model_path)
            break

if model_path_list != []:
    model_path = model_path_list
parser.add_argument('--model_path', default=model_path) ## list of models when used in DSE, if more than 1, ensemble inference must be on

ensemble = 0
ensemble_weights = None
# if model_path is not None:
#     ensemble = len(model_path)
#     ensemble_weights = [0.8447304,  -0.05980476,  0.1999986,   0.02298108]
parser.add_argument('--ensemble', type=int, default=ensemble)
parser.add_argument('--ensemble_weights', default=ensemble_weights)
class_model_path = None
parser.add_argument('--class_model_path', default=class_model_path)



################ transfer learning #################
feature_extract = False
parser.add_argument('--feature_extract', default=feature_extract) # if set to true GNN encoder (or part of it) will be fixed and only MLP will be trained
if feature_extract:
    parser.add_argument('--random_MLP', default=False) # true: initialize MLP randomly
fix_gnn_layer = None ## if none, all layers will be fixed
fix_gnn_layer = 6 ## number of gnn layers to freeze, feature_extract should be set to True
parser.add_argument('--fix_gnn_layer', default=fix_gnn_layer) # if not set to none, feature_extract should be True
FT_extra = False
parser.add_argument('--FT_extra', default=FT_extra) ## fine-tune only on the new data points


################ training details #################
resample = False
val_ratio = 0.15
if resample or FT_extra: val_ratio = 0.1
parser.add_argument('--resample', default=resample) ## when resample is turned on, it will divide the dataset in round-robin and train multiple times to have all the points in train/test set
parser.add_argument('--val_ratio', type=float, default=val_ratio) # ratio of database for validation set

parser.add_argument('--activation', default='elu')     

parser.add_argument('--save_model', type = bool, default=True)

parser.add_argument('--D', type=int, default=64)

parser.add_argument('--lr', default=0.001) ## default=0.001
scheduler, warmup, weight_decay = None, None, 0
scheduler, warmup, weight_decaty = 'cosine', 'linear', 1e-4
parser.add_argument('--weight_decay', default=weight_decay) ## default=0.0001, larger than 1e-4 didn't help original graph P+T
parser.add_argument("--scheduler", default=scheduler)
parser.add_argument("--warmup", default=warmup)

parser.add_argument('--random_seed', default=123) ## default=100
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
        epoch_num = 1500
    else:
        epoch_num = 500
else:
    epoch_num = 200
    if FT_extra: epoch_num = 100

parser.add_argument('--epoch_num', type=int, default=epoch_num)

gpu = 0
device = str('cuda:{}'.format(gpu) if torch.cuda.is_available() and gpu != -1
             else 'cpu')
parser.add_argument('--device', default=device)



################# DSE details ##################
explorer = 'exhaustive'
# explorer = 'annealing'
# explorer = 'genetic'
parser.add_argument('--explorer', default=explorer)
if explorer == 'annealing':
    parser.add_argument('--init_temp', default = 100)
    parser.add_argument('--hls_temp_run', default = 10)
parser.add_argument('--dist_parent', default=True)
parser.add_argument('--dist_child', default=True)

model_tag = 'test'
parser.add_argument('--model_tag', default=model_tag)

parser.add_argument('--prune_util', default=True) # only DSP and BRAM
parser.add_argument('--prune_class', default=False)
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

FLAGS = parser.parse_args()
