from src.config import FLAGS
from src.saver import saver
from src.utils import MLP, _get_y_with_target, MLP_multi_objective

import torch
import torch.nn.functional as F
from torch_geometric.data import DataLoader, Batch
from torch_geometric.nn import GATConv, GlobalAttention, JumpingKnowledge, TransformerConv, GCNConv
from torch_geometric.nn import global_add_pool
import torch.nn as nn
import numpy as np

from src.nn_att import MyGlobalAttention, scale_spectral_norm
from torch.nn import Sequential, Linear, ReLU
from torch.distributions import Categorical

from collections import OrderedDict, defaultdict
from typing import Dict, Any, List


class Net(nn.Module):
    def __init__(self, in_channels, edge_dim = 0, init_pragma_dict = None, task = FLAGS.task, num_layers = FLAGS.num_layers, D = FLAGS.D, target = FLAGS.target):
        super(Net, self).__init__()
        
        self.MLP_version = 'multi_obj'  if len(FLAGS.target) > 1 else  'single_obj'
        if FLAGS.gnn_type == 'gat':
            conv_class = GATConv
        elif FLAGS.gnn_type == 'gcn':
            conv_class = GCNConv
        elif FLAGS.gnn_type == 'transformer':
            conv_class = TransformerConv
        else:
            raise NotImplementedError()
        self.init_pragma_dict = init_pragma_dict

        if FLAGS.no_graph:
            if FLAGS.only_pragma:
                self.init_MLPs = nn.ModuleDict()
                for gname, feat_dim in init_pragma_dict.items():
                    mlp = MLP(feat_dim, D,
                                    activation_type=FLAGS.activation,
                                    num_hidden_lyr=1)
                    self.init_MLPs[gname] = mlp
                channels = [D, D, D, D]
                self.conv_first = MLP(D, D,
                                activation_type=FLAGS.activation,
                                hidden_channels=channels,
                                num_hidden_lyr=len(channels))
            else:   
                channels = [D, D, D, D, D]
                self.conv_first = MLP(in_channels, D,
                                activation_type=FLAGS.activation,
                                hidden_channels=channels,
                                num_hidden_lyr=len(channels))
        else:
            if FLAGS.encode_edge and FLAGS.gnn_type == 'transformer':
                # print(in_channels)
                self.conv_first = conv_class(in_channels, D, edge_dim=edge_dim, dropout=FLAGS.dropout)
            else:
                self.conv_first = conv_class(in_channels, D)

            self.conv_layers = nn.ModuleList()

            self.num_conv_layers = num_layers - 1
            num_layers += FLAGS.gnn_layer_after_MLP
            for _ in range(num_layers - 1):
                if FLAGS.encode_edge and FLAGS.gnn_type == 'transformer':
                    conv = conv_class(D, D, edge_dim=edge_dim, dropout=FLAGS.dropout)
                else:
                    conv = conv_class(D, D)
                self.conv_layers.append(conv)

            if FLAGS.gae_T: # graph auto encoder
                if FLAGS.separate_T and init_pragma_dict != None:
                    self.gae_transform_T = nn.ModuleDict()
                    for gname, feat_dim in init_pragma_dict.items():
                        mlp = Linear(feat_dim[0], D // 8)
                        if FLAGS.pragma_uniform_encoder:
                            self.gae_transform_T['all'] = Linear(feat_dim[1], D // 8) ## TRY ME: changing the MLP for GAE T, was D // 8
                            break
                        else:
                            self.gae_transform_T[gname] = mlp
                    channels = [D // 2, D // 4]
                    # channels = [D // 2]
                    self.decoder_T = MLP(D, D // 8,
                                activation_type=FLAGS.activation,
                                hidden_channels=channels,
                                num_hidden_lyr=len(channels))
            if FLAGS.gae_P:
                out_channels = in_channels
                if FLAGS.input_encode:
                    self.gate_input = Linear(in_channels, 2 * D) ## encode input one-hot representation
                    out_channels = 2 * D
                
                if FLAGS.decoder_type == 'type1':
                    decoder_arch = []
                elif FLAGS.decoder_type == 'type2':
                    decoder_arch = [D, 2 * D, out_channels]
                self.decoder_P = MLP(D, out_channels, activation_type = FLAGS.activation,
                                hidden_channels = decoder_arch,
                                num_hidden_lyr = len(decoder_arch))
                if FLAGS.decoder_type == 'None':
                    for name, param in self.decoder_P.named_parameters():
                        print(name)
                        param.requires_grad = False
            if FLAGS.gae_T or FLAGS.gae_P:
                self.gae_sim_function = nn.CosineSimilarity()
                self.gae_loss_function = nn.CosineEmbeddingLoss()

        self.jkn = JumpingKnowledge(FLAGS.jkn_mode, channels=D, num_layers=2)

        self.task = task

        if task == 'regression':
            if 'GNLL' in FLAGS.loss:
                self.out_dim = 1
                self.MLP_out_dim = 2
                if FLAGS.loss == 'myGNLL':
                    self.loss_function = self.gaussianNLL
                else:
                    self.loss_function = nn.GaussianNLLLoss()
                    self.my_softplus = nn.Softplus()
                
            else:
                self.out_dim = 1
                self.MLP_out_dim = 1
                self.loss_function = nn.MSELoss()
        else:
            self.out_dim = 2
            self.MLP_out_dim = 2
            self.loss_function = nn.CrossEntropyLoss()

        
        
        if FLAGS.node_attention:
            if FLAGS.separate_T:
                self.gate_nn_T = self.node_att_gate_nn(D)
                self.glob_T = MyGlobalAttention(self.gate_nn_T, None)
            if FLAGS.separate_P:
                self.gate_nn_P = self.node_att_gate_nn(D)
                self.glob_P = MyGlobalAttention(self.gate_nn_P, None)
            if FLAGS.separate_pseudo: ## for now, only pseudo node for block
                self.gate_nn_pseudo_B = self.node_att_gate_nn(D)
                self.glob_pseudo_B = MyGlobalAttention(self.gate_nn_pseudo_B, None)
            if FLAGS.separate_icmp:
                self.gate_nn_icmp = self.node_att_gate_nn(D)
                self.glob_icmp = MyGlobalAttention(self.gate_nn_icmp, None)

        
        if 'regression' in self.task:
            _target_list = target
            if not isinstance(FLAGS.target, list):
                _target_list = [target]
            # if FLAGS.new_speedup == False:
            #     self.target_list = [t for t in _target_list if t != 'perf' else 'kernel_speedup'] # to use with trained model from old speedup
            # else
            self.target_list = [t for t in _target_list]
        else:
            self.target_list = ['perf']
        
        if not FLAGS.SSL:
            if FLAGS.node_attention:
                dim = FLAGS.separate_T + FLAGS.separate_P + FLAGS.separate_pseudo + FLAGS.separate_icmp
                in_D = dim * D
            else:
                in_D = D
            if D > 64:
                hidden_channels = [D // 2, D // 4, D // 8, D // 16, D // 32]
            else:
                hidden_channels = [D // 2, D // 4, D // 8]
            if self.MLP_version == 'single_obj':
                self.MLPs = nn.ModuleDict()
                for target in self.target_list:
                    self.MLPs[target] = MLP(in_D, self.MLP_out_dim, activation_type=FLAGS.activation,
                                            hidden_channels=hidden_channels,
                                            num_hidden_lyr=len(hidden_channels))
            else:
                self.MLPs = MLP_multi_objective(in_D, self.MLP_out_dim, activation_type=FLAGS.activation,
                                        hidden_channels=hidden_channels,
                                        objectives=self.target_list,
                                        num_common_lyr=FLAGS.MLP_common_lyr)
                
        ## pragma as MLP
        if FLAGS.pragma_as_MLP:
            self.pragma_as_MLP_list = FLAGS.pragma_as_MLP_list
            self.MLPs_per_pragma = nn.ModuleDict()
            for target in self.pragma_as_MLP_list:
                in_D = D + 1
                if target == 'parallel': in_D = D + 2 ## reduction/normal, factor
                hidden_channels, len_hidden_channels = None, 0
                if FLAGS.pragma_MLP_hidden_channels is not None:
                    hidden_channels = eval(FLAGS.pragma_MLP_hidden_channels)
                    len_hidden_channels = len(hidden_channels)
                self.MLPs_per_pragma[target] = MLP(in_D, D, activation_type=FLAGS.activation,
                                        hidden_channels=hidden_channels, num_hidden_lyr=len_hidden_channels)
            if FLAGS.pragma_order == 'parallel_and_merge':
                in_D = D * len(self.pragma_as_MLP_list)
                hidden_channels = eval(FLAGS.merge_MLP_hidden_channels)
                
                self.MLPs_per_pragma['merge'] = MLP(in_D, D, activation_type=FLAGS.activation,
                                        hidden_channels=hidden_channels, num_hidden_lyr=len(hidden_channels))

    def gnn_spectral_norm(self, param: torch.nn.Module):
        if FLAGS.spectral > 0:
            param.lin_key = scale_spectral_norm(param.lin_key, FLAGS.spectral)
            param.lin_query = scale_spectral_norm(param.lin_query, FLAGS.spectral)
            param.lin_value = scale_spectral_norm(param.lin_value, FLAGS.spectral)
            param.lin_edge = scale_spectral_norm(param.lin_edge, FLAGS.spectral)
            param.lin_skip = scale_spectral_norm(param.lin_skip, FLAGS.spectral)
    
    def mlp_spectral_norm(self, param: torch.nn.Module):
        if FLAGS.spectral > 0:
            param = scale_spectral_norm(param, FLAGS.spectral)
    
    def node_att_gate_nn(self, D):
        if FLAGS.node_attention_MLP:
            return MLP(D, 1,
                    activation_type=FLAGS.activation_type,
                    hidden_channels=[D // 2, D // 4, D // 8],
                    num_hidden_lyr=3)
        else:
            return Sequential(Linear(D, D), ReLU(), Linear(D, 1))

    def cal_gae_loss(self, encoded_g, decoded_out):
        raise NotImplementedError()
        target = torch.ones(len(encoded_g), device=FLAGS.device)  ## for similarity, use the negative form for dissimilarity
        target.requires_grad = False
        gae_loss = self.gae_loss_function(encoded_g, decoded_out, target)
        return gae_loss
    
    def gaussianNLL(self, out=None, target=None):
        '''
            out should include mu and sigma
            https://towardsdatascience.com/get-uncertainty-estimates-in-neural-networks-for-free-48f2edb82c8f
        '''
        if out is not None:
            mu = out[:, 0].reshape(-1, 1)
            log_var = out[:, 1].reshape(-1, 1)
            # mu = torch.zeros(log_var.shape).to(FLAGS.device)
            var = torch.exp(log_var)
            
            if FLAGS.beta > 0:
                scalar = (var.detach() ** FLAGS.beta)
            else:
                scalar = torch.ones(var.shape).to(FLAGS.device)
        

            return torch.mean((log_var / 2 + (1/2) * (1/var) * ((target - mu))**2) * scalar) 
        else:
            return None
        
    def mask_emb(self, out, non_zero_ids):
        out = out.permute((1, 0))
        out = out * non_zero_ids
        out = out.permute((1, 0))
        
        return out
    
    
    def apply_pragam_as_MLP(self, mlp_pragma, out, scope_nodes, X_pragma_per_node, ptype):
        if ptype == 'tile':
            pragma_option = X_pragma_per_node[:, 0].reshape(-1, 1)
        elif ptype == 'pipeline':
            pragma_option = X_pragma_per_node[:, 1].reshape(-1, 1)
        elif ptype == 'parallel':
            pragma_option = X_pragma_per_node[:, 2:4].reshape(-1, 2)
        elif ptype == 'merge':
            mlp_inp = X_pragma_per_node
        else:
            raise NotImplementedError()
            
        non_scope_nodes = torch.sub(1, scope_nodes)
        if ptype == 'merge':
            mlp_out = mlp_pragma(self.mask_emb(mlp_inp, non_zero_ids=scope_nodes))
            out = self.mask_emb(out, non_zero_ids=non_scope_nodes) + self.mask_emb(mlp_out, non_zero_ids=scope_nodes)
        else:
            mlp_inp = torch.cat((out, pragma_option), dim=1)
            mlp_out = mlp_pragma(self.mask_emb(mlp_inp, non_zero_ids=scope_nodes))
            if FLAGS.pragma_order == 'sequential':
                out = self.mask_emb(out, non_zero_ids=non_scope_nodes) + self.mask_emb(mlp_out, non_zero_ids=scope_nodes)
            elif FLAGS.pragma_order == 'parallel_and_merge':
                out = self.mask_emb(mlp_out, non_zero_ids=scope_nodes)
            else:
                raise NotImplementedError()
        return out
    
    def forward(self, data, return_embed=False, return_last=False, return_context=False, return_only_embed=False, return_nodes=False):
        x, edge_index, edge_attr, batch, pragmas = \
            data.x, data.edge_index, data.edge_attr, data.batch , data.pragmas
        if hasattr(data, 'kernel'):
            gname = data.kernel[0]
        if hasattr(data, 'X_pragma_per_node'):
            X_pragma_per_node = data.X_pragma_per_node
        else:
            assert 0
        # print(gname)
        # print(edge_attr.shape)
        outs = []
        out_dict = OrderedDict()
        if FLAGS.activation == 'relu':
            activation = F.relu
        elif FLAGS.activation == 'elu':
            activation = F.elu
        else:
            raise NotImplementedError()
        
        if FLAGS.no_graph:
            out = x
            if FLAGS.only_pragma:
                MLP_to_use = self.init_MLPs[gname]
                out = MLP_to_use(pragmas)
            
            out = self.conv_first(out)
        else:
            if FLAGS.encode_edge and  FLAGS.gnn_type == 'transformer':
                out = activation(self.conv_first(x, edge_index, edge_attr=edge_attr))
            else:
                out = activation(self.conv_first(x, edge_index))

            outs.append(out)

            # for i, conv in enumerate(self.conv_layers):
            for i in range(self.num_conv_layers):
                conv = self.conv_layers[i]
                if FLAGS.encode_edge and  FLAGS.gnn_type == 'transformer':
                    out = conv(out, edge_index, edge_attr=edge_attr)
                else:
                    out = conv(out, edge_index)
                if i != len(self.conv_layers) - 1:
                    out = activation(out)
                    
                outs.append(out)

            if FLAGS.jkn_enable:
                out = self.jkn(outs)
                
        if return_context:
            context = torch.clone(out).detach()
                
        ## pragma as MLP
        if FLAGS.pragma_as_MLP:
            in_merge = None
            for pragma in self.pragma_as_MLP_list:
                out_MLP = self.apply_pragam_as_MLP(self.MLPs_per_pragma[pragma], out, \
                                         data.X_pragmascopenids, X_pragma_per_node, pragma)
                if FLAGS.pragma_order == 'sequential':
                    out = out_MLP
                elif FLAGS.pragma_order == 'parallel_and_merge':
                    if in_merge is None: in_merge = out_MLP
                    else: in_merge = torch.cat((in_merge, out_MLP), dim=1)
                else:
                    raise NotImplementedError()
            ## the merge part
            if FLAGS.pragma_order == 'parallel_and_merge':
                out = self.apply_pragam_as_MLP(self.MLPs_per_pragma['merge'], out, \
                                         data.X_pragmascopenids, in_merge, 'merge')
                
            for i, conv in enumerate(self.conv_layers[self.num_conv_layers:]):
                if FLAGS.encode_edge and  FLAGS.gnn_type == 'transformer':
                    out = conv(out, edge_index, edge_attr=edge_attr)
                else:
                    out = conv(out, edge_index)
                if i != len(self.conv_layers) - 1:
                    out = activation(out)
        
        if return_nodes:
            out_nodes = out
        
        if FLAGS.node_attention:
            out_gnn = out
            out_g = None
            out_P, out_T = None, None
            if FLAGS.separate_P:
                if FLAGS.P_use_all_nodes:
                    out_P, node_att_scores_P = self.glob_P(out_gnn, batch)
                else:
                    out_P, node_att_scores_P = self.glob_P(out_gnn, batch, set_zeros_ids=data.X_contextnids)

                out_dict['emb_P'] = out_P
                out_g = out_P
                
            if FLAGS.separate_T:
                out_T, node_att_scores = self.glob_T(out_gnn, batch, set_zeros_ids=data.X_pragmanids)
                out_dict['emb_T'] = out_T
                if out_P is not None:
                    out_g = torch.cat((out_P, out_T), dim=1)
                else:
                    out_g = out_T
                    
            if FLAGS.separate_pseudo:
                out_pseudo_B, node_att_scores_pseudo = self.glob_pseudo_B(out_gnn, batch, set_zeros_ids=data.X_pseudonids)
                out_dict['emb_pseudo_b'] = out_pseudo_B
                if out_g is not None:
                    out_g = torch.cat((out_g, out_pseudo_B), dim=1)
                else:
                    out_g = out_pseudo_B   

            if FLAGS.separate_icmp:
                out_icmp, node_att_scores_icmp = self.glob_icmp(out_gnn, batch, set_zeros_ids=data.X_icmpnids)
                out_dict['emb_icmp'] = out_icmp
                if out_g is not None:
                    out_g = torch.cat((out_g, out_icmp), dim=1)
                else:
                    out_g = out_icmp             
            
            if not FLAGS.separate_P and not FLAGS.separate_T and not FLAGS.separate_pseudo:
                out_g, node_att_scores = self.glob_T(out_gnn, batch)
                out_dict['emb_T'] = out
                if FLAGS.subtask == 'visualize':
                    from saver import saver
                    saver.save_dict({'data': data, 'node_att_scores': node_att_scores},
                                    f'node_att.pickle')
            out = out_g
        else:
            out = global_add_pool(out, batch)
            out_dict['emb_T'] = out

        total_loss = 0
        gae_loss = 0
        if FLAGS.gae_T and pragmas != None and self.init_pragma_dict != None: # graph auto encoder
            assert FLAGS.separate_T
            if FLAGS.pragma_uniform_encoder:
                gname = 'all'
            encoded_g = self.gae_transform_T[gname](pragmas)
            decoded_out = self.decoder_T(out_dict['emb_T'])
            gae_loss = self.cal_gae_loss(encoded_g, decoded_out)
            # target = torch.ones(len(encoded_g), device=FLAGS.device) ## for similarity, use the negative form for dissimilarity
            # target.requires_grad = False
            # gae_loss = self.gae_loss_function(encoded_g, decoded_out, target)
        if FLAGS.gae_P:
            
            assert FLAGS.separate_P
            encoded_x = x
            if FLAGS.input_encode:
                encoded_x = self.gate_input(x)
            encoded_g = global_add_pool(encoded_x, batch) ## simple addition of node embeddings for gae
            
            if FLAGS.decoder_type == 'None': ## turn off autograd:
                decoded_out = self.decoder_P(out_dict['emb_P']).detach()
            else: 
                decoded_out = self.decoder_P(out_dict['emb_P']).to(FLAGS.device)
            # gae_loss = (self.gae_loss_function(encoded_g, decoded_out)).mean()
            gae_loss += self.cal_gae_loss(encoded_g, decoded_out)
            # from saver import saver
            # saver.info(f'cosine similarity is {self.gae_sim_function(encoded_g, decoded_out).mean()}')
            # saver.log_info(f'encoded_g : {F.normalize(encoded_g[0, :], dim=0)}')
            # saver.log_info(f'decoded_out : {F.normalize(decoded_out[0, :], dim=0)}')
        if FLAGS.gae_P or FLAGS.gae_T:
            total_loss += torch.abs(gae_loss) #!!!!!!
                # gae_loss = gae_loss.view((len(gae_loss), 1))
                # print(gae_loss.shape)

        # out, edge_index, _, batch, perm, score = self.pool1(
        #     out, edge_index, None, batch)
        # ratio = out.size(0) / x.size(0)            

        # loss_dict = OrderedDict()
        
        
        out_embed = out
        if return_only_embed:
            if return_nodes:
                return out_embed, out_nodes
            return out_embed
        # _target_list = FLAGS.target
        # if not isinstance(FLAGS.target, list):
        #     _target_list = [FLAGS.target]
        # target_list = [t for t in _target_list]
        # target_list = ['perf', 'util-LUT', 'util-FF', 'util-DSP']
        # target_list = ['util-DSP']
        
        loss_dict = {}
        out_lasts = {}
        if not FLAGS.SSL:
            if self.MLP_version == 'multi_obj':
                if return_last:
                    out_MLPs, out_lasts = self.MLPs(out_embed, return_last)
                else:
                    out_MLPs = self.MLPs(out_embed)
            for target_name in self.target_list:
            # for target_name in target_list:
                if self.MLP_version == 'multi_obj':
                    out = out_MLPs[target_name]
                else:
                    out = self.MLPs[target_name](out_embed)
                y = _get_y_with_target(data, target_name)
                if self.task == 'regression':
                    target = y.view((len(y), self.out_dim))
                    # print('target', target.shape)
                    if FLAGS.loss == 'RMSE':
                        loss = torch.sqrt(self.loss_function(out, target))
                        # loss = mean_squared_error(target, out, squared=False)
                    elif FLAGS.loss == 'MSE' or FLAGS.loss == 'myGNLL':
                        loss = self.loss_function(out, target) ## predicting my and log_var in case of myGNLL
                        # loss = mean_squared_error(target, out, squared=True)
                    elif FLAGS.loss == 'GNLL': ## predicting var
                        var = self.my_softplus(out[:, 1].reshape(-1, 1))
                        loss = self.loss_function(out[:, 0].reshape(-1, 1), target, var)
                    else:
                        raise NotImplementedError()
                    # print('loss', loss.shape)
                else:
                    target = y.view((len(y)))
                    loss = self.loss_function(out, target)
                out_dict[target_name] = out
                total_loss += loss
                loss_dict[target_name] = loss

        # return out_dict, total_loss, loss_dict, gae_loss
        if return_embed:
            if return_last:
                return out_dict, out_embed, out_lasts, total_loss, loss_dict, None
            if return_context:
                return out_dict, out_embed, context, total_loss, loss_dict, None
            return out_dict, out_embed, total_loss, loss_dict, None
        # return out_dict, None, None, None
        if return_last:
            return out_dict, out_lasts, total_loss, loss_dict, gae_loss
        return out_dict, total_loss, loss_dict, gae_loss

def get_mlp_block(
    in_D: int, hiddens: List[int], out_D: int, dropout: float = None,
    layer_norm: bool = None, no_final_activation: bool = False
):
    ret = nn.Sequential()
    hiddens = [in_D] + hiddens + [out_D]
    for i in range(len(hiddens)-1):
        ret.append(nn.Linear(hiddens[i], hiddens[i+1]))
        if dropout is not None:
            assert isinstance(dropout, float)
            ret.append(nn.Dropout(dropout))
        if layer_norm:
            assert dropout == None
            ret.append(nn.LayerNorm(hiddens[i+1]))
        if no_final_activation and i == len(hiddens)-2:
            pass
        else:
            ret.append(nn.ELU())
    if no_final_activation:
        assert not isinstance(ret[-1], nn.ELU)
    else:
        assert isinstance(ret[-1], nn.ELU)
    return ret

class ConcatMultiObjMLP(nn.Module):
    def __init__(
        self, objs: List[str], in_D: int, prev_hiddens: List[int], concat_n: int, pos_hiddens: List[int], out_D: int, no_final_activation=True,
        noisy_private = False
    ):
        super(ConcatMultiObjMLP, self).__init__()
        self.objs = objs
        self.prev_heads = nn.ModuleDict()
        self.pos_heads = nn.ModuleDict()
        for obj in self.objs:
            self.prev_heads[obj] = get_mlp_block(in_D, prev_hiddens[:-1], prev_hiddens[-1], layer_norm=True)
            ### FIXME: no dropout here!!!!
            self.pos_heads[obj] = get_mlp_block(prev_hiddens[-1] + concat_n, pos_hiddens, out_D, no_final_activation=no_final_activation)
        self.noisy_private = noisy_private
        assert self.noisy_private == False

    def forward(self, data: torch.Tensor, concat: Dict[str, torch.Tensor]):
        ret = dict()
        for obj in self.objs:
            h = self.prev_heads[obj](data)
            assert len(h.shape) == 2
            
            # !!!!!!!!! for testing purpose
            # h = torch.concat([h, torch.zeros(concat[obj].shape, device=h.device)], dim=-1)
            # h = torch.concat([torch.zeros(h.shape, device=h.device), concat[obj]], dim=-1)
            # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            if self.noisy_private and np.random.rand() < 0.5:
                h += torch.randn(h.shape, device=h.device)
            
            h = torch.concat([h, concat[obj]], dim=-1)
            ret[obj] = self.pos_heads[obj](h)
        return ret
    
    def forward_prev(self, data: torch.Tensor):
        ret = dict()
        for obj in self.objs:
            ret[obj] = self.prev_heads[obj](data)
        return ret
    
    def forward_pos(self, prev: Dict[str, torch.Tensor], concat: Dict[str, torch.Tensor]):
        ret = dict()
        for obj in self.objs:
            h = torch.concat([prev[obj], concat[obj]], dim=-1)
            ret[obj] = self.pos_heads[obj](h)
        return ret


class MultiObjMLP(nn.Module):
    def __init__(self, objs: List[str], in_D: int, hiddens: List[int], out_D: int, no_final_activation=False, layer_norm=True):
        super(MultiObjMLP, self).__init__()
        self.objs = objs
        self.heads = nn.ModuleDict()
        for obj in self.objs:
            self.heads[obj] = get_mlp_block(in_D, hiddens, out_D, layer_norm=layer_norm, no_final_activation=no_final_activation)
    
    def forward(self, data):
        ret = dict()
        for obj in self.objs:
            ret[obj] = self.heads[obj](data)
        return ret
    
    def forward_dict(self, data_dict):
        ret = dict()
        for obj in self.objs:
            ret[obj] = self.heads[obj](data_dict[obj])
        return ret
   
class MulNet(Net):
    def __init__(
        self, in_channels, n_head, param: Dict[str, Any], edge_dim = 0, init_pragma_dict = None, task = FLAGS.task, num_layers = FLAGS.num_layers,
        D = FLAGS.D, target = FLAGS.target, cache_embed = False
    ):
        super(MulNet, self).__init__(in_channels, edge_dim, init_pragma_dict, task, num_layers, D, target)
        if FLAGS.node_attention:
            dim = FLAGS.separate_T + FLAGS.separate_P + FLAGS.separate_pseudo + FLAGS.separate_icmp
            in_D = dim * D
        else:
            in_D = D
        del self.MLPs
        self.MLPs_list = nn.ModuleList()
        self.n_head = n_head
        self.param = param
        if 'shared_MLP' in self.param:
            n_shared = self.param['shared_MLP']
            self.shared_MLP = nn.Sequential()
            hiddens = []
            if 'shared_MLP_hidden' in self.param:
                hiddens = eval(self.param['shared_MLP_hidden'])
                hiddens = [in_D] + hiddens
            for i in range(n_shared):
                if len(hiddens) != 0:
                    self.shared_MLP.append(nn.Linear(hiddens[i], hiddens[i+1]))
                    self.shared_MLP.append(nn.LayerNorm(hiddens[i+1]))
                else:
                    self.shared_MLP.append(nn.Linear(in_D, in_D))
                    self.shared_MLP.append(nn.LayerNorm(in_D))
                self.shared_MLP.append(nn.ReLU())
        if 'shared_MLP_hidden' in self.param:
            in_D = hiddens[-1]
        self.normalize_arch_impl = 0.
        if 'arch_embed' in self.param:
            hiddens = eval(self.param['arch_embed'])
            self.arch_embed_MLPs = MultiObjMLP(self.target_list, in_D, hiddens[:-1], hiddens[-1])
            private_prev_hiddens = eval(self.param['private_prev_hiddens'])
            private_pos_hiddens = eval(self.param['private_pos_hiddens'])
            for i in range(n_head):
                noisy_private = False
                if i == n_head - 1 and 'last_noisy_private' in self.param and self.param['last_noisy_private']:
                    noisy_private = True
                new_MLPs = ConcatMultiObjMLP(
                    self.target_list, in_D, private_prev_hiddens, hiddens[-1], private_pos_hiddens, 1,
                    noisy_private=noisy_private
                )
                self.MLPs_list.append(new_MLPs)
            if 'normalize_arch_impl' in self.param:
                self.normalize_arch_impl = self.param['normalize_arch_impl']
                if self.param['normalize_arch_impl']:
                    self.arch_prj_MLPs = MultiObjMLP(self.target_list, hiddens[-1], [], private_prev_hiddens[-1], layer_norm=False, no_final_activation=True)
        else:    
            for i in range(n_head):
                hidden_channels = eval(self.param['private_hidden_channels'])
                if self.MLP_version == 'single_obj':
                    new_MLPs = nn.ModuleDict()
                    for target in self.target_list:
                        new_MLPs[target] = MLP(in_D, self.MLP_out_dim, activation_type=FLAGS.activation,
                                                hidden_channels=hidden_channels,
                                                num_hidden_lyr=len(hidden_channels))
                else:
                    new_MLPs = MLP_multi_objective(in_D, self.MLP_out_dim, activation_type=FLAGS.activation,
                                            hidden_channels=hidden_channels,
                                            objectives=self.target_list,
                                            num_common_lyr=FLAGS.MLP_common_lyr)
                self.MLPs_list.append(new_MLPs)
        self.cache_embed = cache_embed
        if self.cache_embed:
            self.embed_dict_list = [dict() for i in range(n_head)]
    
    def forward(self, data_list, no_loss = False, ori_arch_dict = None):
        ret_list = []
        # mark = True
        # for data in data_list:
        #     if data is None: mark = False
        # embed_list = []
        # if mark:
        #     ll = []
        #     lens = []
        #     for data in data_list:
        #         tl = data.to_data_list()
        #         ll += tl
        #         lens.append(len(tl))
        #     b_data = Batch.from_data_list(ll)
        #     b_embed = super(MulNet, self).forward(b_data, return_only_embed=True)
        #     st = 0
        #     for idx, data in enumerate(data_list):
        #         embed_list.append(b_embed[st:st+lens[idx]])
        #         st += lens[idx]
        for idx, data in enumerate(data_list):
            if data is None:
                ret_list.append((torch.as_tensor(0.), {}))
                continue
            # if mark:
            #     out_embed = embed_list[idx]
            # else:
            out_embed = super(MulNet, self).forward(data, return_only_embed=True)
            loss_dict = {}
            out_dict = {}
            total_loss = 0
            if 'shared_MLP' in self.param and self.param['shared_MLP'] != 0:
                out_embed = self.shared_MLP(out_embed)
            if 'arch_embed' in self.param:
                if ori_arch_dict is None:
                    arch_dict = self.arch_embed_MLPs(out_embed)
                else:
                    arch_dict = ori_arch_dict
            if not FLAGS.SSL:
                if self.MLP_version == 'multi_obj':
                    if 'arch_embed' in self.param:
                        out_MLPs = self.MLPs_list[idx](out_embed, arch_dict)
                    else:
                        out_MLPs = self.MLPs_list[idx](out_embed)
                else:
                    raise NotImplementedError()
                for target_name in self.target_list:
                    if self.MLP_version == 'multi_obj':
                        out = out_MLPs[target_name]
                    else:
                        raise NotImplementedError()
                    if no_loss: loss = 0.
                    else:
                        y = _get_y_with_target(data, target_name)
                        if self.task == 'regression':
                            target = y.view((len(y), self.out_dim))
                            if FLAGS.loss == 'RMSE':
                                loss = torch.sqrt(self.loss_function(out, target))
                            elif FLAGS.loss == 'MSE' or FLAGS.loss == 'myGNLL':
                                loss = self.loss_function(out, target) ## predicting my and log_var in case of myGNLL
                            elif FLAGS.loss == 'GNLL': ## predicting var
                                var = self.my_softplus(out[:, 1].reshape(-1, 1))
                                loss = self.loss_function(out[:, 0].reshape(-1, 1), target, var)
                            else:
                                raise NotImplementedError()
                        else:
                            target = y.view((len(y)))
                            loss = self.loss_function(out, target)
                    out_dict[target_name] = out
                    total_loss += loss
                    loss_dict[target_name] = loss
            else:
                raise NotImplementedError()
            ret_list.append((total_loss, loss_dict, out_dict))
        return ret_list
    
    def forward_cache(self, embed_list, y_dict_list):
        ret_list = []
        for idx, data in enumerate(embed_list):
            if data is None:
                ret_list.append((torch.as_tensor(0.), {}))
                continue
            out_embed = data
            loss_dict = {}
            out_dict = {}
            total_loss = 0
            if 'shared_MLP' in self.param and self.param['shared_MLP'] != 0:
                out_embed = self.shared_MLP(out_embed)
            if 'arch_embed' in self.param:
                arch_dict = self.arch_embed_MLPs(out_embed)
            if not FLAGS.SSL:
                if self.MLP_version == 'multi_obj':
                    if 'arch_embed' in self.param:
                        out_MLPs = self.MLPs_list[idx](out_embed, arch_dict)
                    else:
                        out_MLPs = self.MLPs_list[idx](out_embed)
                else:
                    raise NotImplementedError()
                for j, target_name in enumerate(self.target_list):
                    if self.MLP_version == 'multi_obj':
                        out = out_MLPs[target_name]
                    else:
                        raise NotImplementedError()
                    y = y_dict_list[idx][:, j]
                    if self.task == 'regression':
                        target = y.view((len(y), self.out_dim))
                        if FLAGS.loss == 'RMSE':
                            loss = torch.sqrt(self.loss_function(out, target))
                        elif FLAGS.loss == 'MSE' or FLAGS.loss == 'myGNLL':
                            loss = self.loss_function(out, target) ## predicting my and log_var in case of myGNLL
                        elif FLAGS.loss == 'GNLL': ## predicting var
                            var = self.my_softplus(out[:, 1].reshape(-1, 1))
                            loss = self.loss_function(out[:, 0].reshape(-1, 1), target, var)
                        else:
                            raise NotImplementedError()
                    else:
                        target = y.view((len(y)))
                        loss = self.loss_function(out, target)
                    out_dict[target_name] = out
                    total_loss += loss
                    loss_dict[target_name] = loss
            else:
                raise NotImplementedError()
            ret_list.append((total_loss, loss_dict, out_dict))
        return ret_list
    
    def get_cache(self, data):
        assert data is not None
        y_list = []
        out_embed = super(MulNet, self).forward(data, return_only_embed=True)
        for target in self.target_list:
            y_list.append(_get_y_with_target(data, target).reshape(-1, 1))
        return out_embed, torch.concat(y_list, dim=-1)
    
    def forward_norm(self, data = None):
        extra_loss = 0.
        assert data == None
        if self.normalize_arch_impl != 0. and data is not None:
            assert 0
            arch_dict, impl_embed_dicts = self.forward_embed(data, return_one=False)
            arch_dict = self.arch_prj_MLPs.forward_dict(arch_dict)
            arch_impl_sims = []
            for impl_embed_dict in impl_embed_dicts:
                for obj in self.target_list:
                    extra_loss += torch.abs(self.normalize_arch_impl * torch.mean(torch.nn.functional.cosine_similarity(arch_dict[obj], impl_embed_dict[obj])))
            extra_loss /= len(impl_embed_dicts)
        return extra_loss
    
    def forward_embed(self, data, return_one=True):
        # return perf embed only
        assert 'arch_embed' in self.param
        out_embed = super(MulNet, self).forward(data, return_only_embed=True)
        if 'shared_MLP' in self.param and self.param['shared_MLP'] != 0:
            out_embed = self.shared_MLP(out_embed)
        arch_embed = None
        impl_embeds = []
        impl_embed_dicts = []
        assert 'arch_embed' in self.param
        arch_dict = self.arch_embed_MLPs(out_embed)
        arch_embed = arch_dict['perf']
        for i in range(len(self.MLPs_list)):
            new_dict = self.MLPs_list[i].forward_prev(out_embed)
            impl_embed_dicts.append(new_dict)
            impl_embeds.append(new_dict['perf'])
        if return_one:
            return arch_embed, impl_embeds
        return arch_dict, impl_embed_dicts
    
from torch.autograd import Function

class ReverseLayerF(Function):
    @staticmethod
    def forward(ctx, x, alpha):
        ctx.alpha = alpha
        return x.view_as(x)

    @staticmethod
    def backward(ctx, grad_output):
        output = grad_output.neg() * ctx.alpha
        return output, None

    
class DomainNet(Net):
    def __init__(
        self, in_channels, param: Dict[str, Any], edge_dim = 0, init_pragma_dict = None, task = FLAGS.task, num_layers = FLAGS.num_layers,
        D = FLAGS.D, target = FLAGS.target
    ):
        super(DomainNet, self).__init__(in_channels, edge_dim, init_pragma_dict, task, num_layers, D, target)
        self.param = param
        self.n_domain = self.param['n_domain']
        if FLAGS.node_attention:
            dim = FLAGS.separate_T + FLAGS.separate_P + FLAGS.separate_pseudo + FLAGS.separate_icmp
            in_D = dim * D
        else:
            in_D = D
        self.use_ln = False if 'use_ln' not in self.param else self.param['use_ln']
        self.dropout = None if 'dropout' not in self.param else self.param['dropout']
        self.adp_type = self.param['adp_type']
        print(self.n_domain)
        if self.adp_type == 'multiclass':
            self.adaptor_mlp = get_mlp_block(
                in_D, [1024, 1024], self.n_domain, dropout=self.dropout, layer_norm=self.use_ln, 
                no_final_activation=True
            )
        elif self.adp_type == 'multibin':
            self.adaptor_mlp = get_mlp_block(
                in_D, [1024, 1024], self.n_domain*2, dropout=self.dropout, layer_norm=self.use_ln, 
                no_final_activation=True
            )
        else:
            self.adaptor_mlp = None
        self.step = 0
        self.tot_step = 0
    
    def set_tot_step(self, tot: float):
        self.tot_step = tot
            
    def update_alpha(self):
        p = self.step/self.tot_step
        self.alpha = (2./(1. + np.exp(-10. * p))-1.)
        # print(self.alpha, p)
        self.step += 1.
    
    def forward_all(self, l_data, u_data):
        out_dict, l_embed, total_loss, loss_dict, _ = super(DomainNet, self).forward(l_data, return_embed=True)
        if self.adp_type != 'no':
            u_embed = super(DomainNet, self).forward(u_data, return_only_embed=True)
            embed = torch.concat([l_embed, u_embed])
            embed = ReverseLayerF.apply(embed, self.alpha)
            logits = self.adaptor_mlp(embed)
            if self.adp_type == 'multiclass':
                target = torch.concat([l_data.d_y, u_data.d_y]).squeeze()
                adp_loss = self.loss_function(logits, target)
            else:
                assert self.adp_type == 'multibin'
                logits = logits.reshape((logits.shape[0], -1, 2)).reshape(-1, 2)
                target = torch.concat([l_data.d_y, u_data.d_y]).squeeze().reshape(-1)
                adp_loss = self.loss_function(logits, target)
            total_loss += adp_loss
        else:
            adp_loss = torch.tensor(0.0)
        return out_dict, total_loss, loss_dict, adp_loss