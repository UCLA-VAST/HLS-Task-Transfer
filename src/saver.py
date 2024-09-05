from src.config import FLAGS
from src.utils import get_ts, create_dir_if_not_exists, save
from src.utils import get_src_path, get_model_info_as_str, get_host, \
    extract_config_code, plot_scatter_line, plot_dist, save_pickle, dirname
from tensorboardX import SummaryWriter
from collections import OrderedDict
from pprint import pprint
from os.path import join
import torch
import networkx as nx
import numpy as np
import time
import os, sys

class MyTimer():
    def __init__(self) -> None:
        self.start = time.time()
    
    def elapsed_time(self):
        end = time.time()
        minutes, seconds = divmod(end - self.start, 60)
        
        return int(minutes)
    
class Saver(object):
    def __init__(self):
        model_str = self._get_model_str()
        if 'jc8' in get_host(): base = join(get_src_path(), 'logs')
        else: base = '/expr'
        base = join(get_src_path(), 'logs')
        if FLAGS.pragma_as_MLP == True:
            if FLAGS.pragma_MLP_hidden_channels is not None:
                model_specific = join(f'auto-encoder/iccad/round{FLAGS.round_num}-40kernel/pragma_as_MLP/{FLAGS.pragma_order}/class/post-gnn-3lp-3lm', f'dropout-{FLAGS.dropout}-{FLAGS.loss}-scheduler-warmup-weight-decay-{FLAGS.weight_decay}-no-mutual-info-PB-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            else:
                model_specific = join(f'auto-encoder/iccad/round{FLAGS.round_num}-40kernel/pragma_as_MLP/{FLAGS.pragma_order}', f'freeze-{FLAGS.fix_gnn_layer}-random-MLP-{FLAGS.loss}-scheduler-warmup-weight-decay-{FLAGS.weight_decay}-2l-merge-no-mutual-info-PB-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
        elif 'hierarchy' in FLAGS.graph_type:
            model_specific = join(f'auto-encoder/iccad/round{FLAGS.round_num}-40kernel/hierarchy_graph/class', f'{FLAGS.loss}-scheduler-warmup-weight-decay-{FLAGS.weight_decay}-{FLAGS.loss}-dropout-no-mutual-info-PT-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
        else:
            model_specific = join(f'auto-encoder/iccad/round{FLAGS.round_num}-40kernel/original_graph/', f'range-{FLAGS.loss}-scheduler-warmup-weight-decay-{FLAGS.weight_decay}-dropout-{FLAGS.dropout}-with-mutual-info-PT-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            
        self.logdir = join(base, model_specific)
            # '/expr/logs/auto-encoder/task-transfer', 'all-data-sepPT', f'gae-{FLAGS.gae}-{FLAGS.model_tag}_{FLAGS.norm_method}_{FLAGS.task}_{FLAGS.target_kernel}_{FLAGS.subtask}_{FLAGS.tag}_{"".join(FLAGS.target)}_{model_str}_{get_ts()}')
            # '/expr/logs/auto-encoder', 'all-data-sepPT/extended-graph-connected', f'SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.norm_method}_{FLAGS.task}_{FLAGS.subtask}_{FLAGS.tag}_{"".join(FLAGS.target)}_{model_str}_{get_ts()}')
            # '/expr/logs/auto-encoder', 'all-data-sepPT/correct-edge-ID/simple-program', f'SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.norm_method}_{FLAGS.task}_{FLAGS.subtask}_{FLAGS.tag}_{"".join(FLAGS.target)}_{model_str}_{get_ts()}')
            # 'auto-encoder/all-data-sepPT/correct-edge-ID/simple-program', f'blocked-reduction-wo-unsafe-134f-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{get_ts()}')
            # '/expr/logs/auto-encoder/hierarchy/all-data-sepPTB-extended-connected/round10/', f'forgetting-only-blocked-fine-tune-extra_norm-perf-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # '/expr/logs/test2')
            # f'/expr/logs/auto-encoder/hierarchy/all-data-sepPTB-extended-connected/round{FLAGS.round_num}-22kernel', f'correct-graph-type_norm-perf-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # f'auto-encoder/all-data-sepPT/round{FLAGS.round_num}-34kernel/iccad/orig_graph', f'only-P-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # f'auto-encoder/iccad/round{FLAGS.round_num}-34kernel/hierarchy_graph', f'no-mutual-info-PTB-edge-attr-{FLAGS.encode_edge}_position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # f'rl/{FLAGS.subtask}_{FLAGS.task}_{FLAGS.explorer}_{FLAGS.tag}_{get_ts()}')
            # '/expr/logs/dac/round10-22kernel', f'norm-perf-edge-attr-{FLAGS.encode_edge}-position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # '/expr/logs/auto-encoder/all-data-sepPT/round1/task-transfer/ensemble-meta-weight/predictions', f'norm-perf-edge-attr-{FLAGS.encode_edge}-position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # 'auto-encoder/all-data-sepPT/round1/task-transfer/ensemble-meta-weight/predictions', f'norm-perf-edge-attr-{FLAGS.encode_edge}-position-{FLAGS.encode_edge_position}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # '/expr/logs/auto-encoder/extended-graph-db/round8/task-transfer', f'norm-perf-edge-attr-{FLAGS.encode_edge}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # '/expr/logs/auto-encoder/round3-model-comparison/', f'norm-perf-edge-attr-{FLAGS.encode_edge}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # '/expr/logs/simple-program/initial-graph', f'edge-attr-{FLAGS.encode_edge}-{FLAGS.num_layers}L-SSL-{FLAGS.SSL}-gae-T-{FLAGS.gae_T}-gae-P-{FLAGS.gae_P}-{FLAGS.model_tag}_{FLAGS.task}_{FLAGS.subtask}_{get_ts()}')
            # 'yunsheng', 'MAML_{}-{}_{}_{}_{}_{}_{}_{}'.format(FLAGS.only_common_db, FLAGS.model_tag, FLAGS.norm_method, FLAGS.task, FLAGS.subtask, FLAGS.tag, FLAGS.target, model_str, get_ts()))
        self.dont_save = FLAGS.dont_save
        if self.dont_save:
            if os.path.exists(join(base, 'tmp')):
                tmp = join(base, 'tmp')
                # os.system(f'rm -rf {tmp}')
            self.logdir=join(base, 'tmp')
        create_dir_if_not_exists(self.logdir)
        self.new_sub_saver()
        if not self.dont_save:
            self._save_conf_code()
        self.timer = MyTimer()
        print('Logging to {}'.format(self.logdir))

    def new_sub_saver(self, subdir='run1'):
        self.writer = SummaryWriter(join(self.logdir, subdir, 'runs'))
        self.model_info_f = self._open(join(self.logdir, subdir, 'model_info.txt'))
        self.plotdir = join(self.logdir, subdir, 'plot')
        self.model_logdir=join(self.logdir, subdir)
        create_dir_if_not_exists(self.plotdir)
        self.objdir = join(self.logdir, subdir, 'obj')
        if not self.dont_save:
            self._log_model_info()

    def _open(self, f):
        return open(join(self.logdir, f), 'w')

    def close(self):
        self.writer.close()
        if hasattr(self, 'log_f'):
            self.log_f.close()
        if hasattr(self, 'log_e'):
            self.log_e.close()
        if hasattr(self, 'log_d'):
            self.log_d.close()
        if hasattr(self, 'results_f'):
            self.results_f.close()

    def get_log_dir(self):
        return self.logdir

    def get_plot_dir(self):
        create_dir_if_not_exists(self.plotdir)
        return self.plotdir

    def get_obj_dir(self):
        create_dir_if_not_exists(self.objdir)
        return self.objdir

    def log_list_of_lists_to_csv(self, lol, fn, delimiter=','):
        import csv
        fp = open(join(self.logdir, fn), 'w+')
        csv_writer = csv.writer(fp, delimiter=delimiter)
        for l in lol:
            csv_writer.writerow(l)
        fp.close()
        
    def log_dict_of_dicts_to_csv(self, fn, csv_dict, csv_header, delimiter=','):
        import csv
        fp = open(join(self.logdir, f'{fn}.csv'), 'w+')
        f_writer = csv.DictWriter(fp, fieldnames=csv_header)
        f_writer.writeheader()
        for d, value in csv_dict.items():
            if d == 'header':
                continue
            f_writer.writerow(value)
        fp.close()

    def save_dict(self, d, p, dir_name=None):
        base_path = self.logdir
        if dir_name is not None:
            base_path = join(base_path, dir_name)
        filepath = join(base_path, p)
        create_dir_if_not_exists(dirname(filepath))
        save_pickle(d, filepath, print_msg=True)
        
    def log_dict_to_json(self, dictionary, fn):
        import json

        # as requested in comment
        with open(join(self.get_obj_dir(), fn), 'w') as file:
            file.write(json.dumps(dictionary))

    def log_model_architecture(self, model, silent=False):
        self.model_info_f.write('\n##################################\n')
        self.model_info_f.write('{}\n'.format(model))
        if not silent:
            print('{}\n'.format(model))
        self.model_info_f.flush()
        # self.model_info_f.close()  # TODO: check in future if we write more to it

    def log_info(self, s, silent=False):
        if not silent:
            print(s)
        if not hasattr(self, 'log_f'):
            self.log_f = self._open('log.txt')
        try:
            self.log_f.write('{}\n'.format(s))
            self.log_f.flush()
        except:
            raise RuntimeError()
        
    def info(self, s, silent=False):
        elapsed = self.timer.elapsed_time()
        if not silent:
            print(f'[{elapsed}m] INFO: {s}')
        if not hasattr(self, 'log_f'):
            self.log_f = self._open('log.txt')
        self.log_f.write(f'[{elapsed}m] INFO: {s}\n')
        self.log_f.flush()
        
    def error(self, s, silent=False):
        elapsed = self.timer.elapsed_time()
        if not silent:
            print(f'[{elapsed}m] ERROR: {s}')
        if not hasattr(self, 'log_e'):
            self.log_e = self._open('error.txt')
        self.log_e.write(f'[{elapsed}m] ERROR: {s}\n')
        self.log_e.flush()
        
    def warning(self, s, silent=False):
        elapsed = self.timer.elapsed_time()
        if not silent:
            print(f'[{elapsed}m] WARNING: {s}')
        if not hasattr(self, 'log_f'):
            self.log_f = self._open('log.txt')
        self.log_f.write(f'[{elapsed}m] WARNING: {s}\n')
        self.log_f.flush()
        
    def debug(self, s, silent=True, write_file=True):
        elapsed = self.timer.elapsed_time()
        if not silent:
            print(f'[{elapsed}m] DEBUG: {s}')
        if not hasattr(self, 'log_d'):
            self.log_d = self._open('debug.txt')
        if write_file:
            self.log_d.write(f'[{elapsed}m] DEBUG: {s}\n')
            self.log_d.flush()
        
    def log_info_new_file(self, s, fn):
        # print(s)
        log_f = open(join(self.logdir, fn), 'a')
        log_f.write('{}\n'.format(s))
        log_f.close()

    def _save_conf_code(self):
        with open(join(self.logdir, 'config.py'), 'w') as f:
            f.write(extract_config_code())
        p = join(self.get_log_dir(), 'FLAGS')
        save({'FLAGS': FLAGS}, p, print_msg=False)

    # def save_flags(self, fn):
    #     p = join(self.get_log_dir(), fn)
    #     save({'FLAGS': FLAGS}, p, print_msg=False)

    def save_trained_model(self, trained_model, ext=''):
        model_dir = join(self.logdir, 'models')
        create_dir_if_not_exists(model_dir)
        p = join(model_dir, 'trained_model{}.pt'.format(ext))
        torch.save(trained_model.state_dict(), p)
        print('Trained model saved to {}'.format(p))

    def flatten_list_tuple_into_np_arr(self, li):
        li_flatten = []
        for elt in li:
            for elt_elt in elt:
                li_flatten.append(elt_elt)
        return np.array(li_flatten)

    def log_scatter_mcs(self, cur_id, iter, result_d):
        sp = join(self.get_obj_dir(), f'{iter}_val')
        save(result_d, sp)
        self._save_to_result_file(f'iter {iter} val result', to_print=True)
        for label, data_dict in result_d.items():
            if FLAGS.val_debug:
                g1, g2 = data_dict['g1'], data_dict['g2']
                nx.write_gexf(g1, join(self.get_obj_dir(), f'{cur_id}_{g1.graph["gid"]}.gexf'))
                nx.write_gexf(g2, join(self.get_obj_dir(), f'{cur_id}_{g2.graph["gid"]}.gexf'))
            plot_scatter_line(data_dict['result'], label, self.get_plot_dir())

        for label, data_dict in result_d.items():
            for model_name, data_dict_elt in data_dict['result'].items():
                incumbent_size_list = data_dict_elt['incumbent_data']
                runtime = data_dict_elt['runtime']
                self._save_to_result_file(f'  num_iters={len(incumbent_size_list)}, '
                                          f'runtime={runtime}, '
                                          f'mcs={incumbent_size_list[-1]}, '
                                          f'method={model_name}', to_print=True)

    def save_graph_as_gexf(self, g, fn):
        nx.write_gexf(g, join(self.get_obj_dir(), fn))

    def save_eval_result_dict(self, result_dict, label):
        self._save_to_result_file(label)
        self._save_to_result_file(result_dict)

    def save_pairs_with_results(self, test_data, train_data, info):
        p = join(self.get_log_dir(), '{}_pairs'.format(info))
        save({'test_data_pairs':
                  self._shrink_space_pairs(test_data.dataset.pairs),
              # 'train_data_pairs':
              # self._shrink_space_pairs(train_data.dataset.pairs)
              },
             p, print_msg=False)

    def save_ranking_mat(self, true_m, pred_m, info):
        p = join(self.get_log_dir(), '{}_ranking_mats'.format(info))
        save({'true_m': true_m.__dict__, 'pred_m': pred_m.__dict__},
             p, print_msg=False)

    def save_global_eval_result_dict(self, global_result_dict):
        p = join(self.get_log_dir(), 'global_result_dict')
        save(global_result_dict, p, print_msg=False)

    def save_overall_time(self, overall_time):
        self._save_to_result_file(overall_time, 'overall time')

    # def clean_up_saved_models(self, best_iter):
    #     for file in glob('{}/models/*'.format(self.get_log_dir())):
    #         if str(best_iter) not in file:
    #             system('rm -rf {}'.format(file))

    def save_exception_msg(self, msg):
        with self._open('exception.txt') as f:
            f.write('{}\n'.format(msg))

    def _get_model_str(self):
        li = []
        key_flags = [FLAGS.model_tag, FLAGS.dataset]
        for f in key_flags:
            li.append(str(f))
        return '_'.join(li)

    def _log_model_info(self):
        s = get_model_info_as_str(FLAGS)
        print(s)
        self.model_info_f.write(s)
        self.model_info_f.write('\n\n')
        self.writer.add_text('model_info_str', s)

    def log_new_FLAGS_to_model_info(self):
        self.model_info_f.write('----- new model info after loading\n')
        self._log_model_info()

    def _save_to_result_file(self, obj, name=None, to_print=False):
        if not hasattr(self, 'results_f'):
            self.results_f = self._open('results.txt')
        if type(obj) is dict or type(obj) is OrderedDict:
            # self.f.write('{}:\n'.format(name))
            # for key, value in obj.items():
            #     self.f.write('\t{}: {}\n'.format(key, value))
            pprint(obj, stream=self.results_f)
        elif type(obj) is str:
            if to_print:
                print(obj)
            self.results_f.write('{}\n'.format(obj))
        else:
            self.results_f.write('{}: {}\n'.format(name, obj))
        self.results_f.flush()

    def _shrink_space_pairs(self, pairs):
        for _, pair in pairs.items():
            # print(pair.__dict__)
            pair.shrink_space_for_save()
            # pass
            # print(pair.__dict__)
            # exit(-1)
        return pairs


saver = Saver()  # can be used by `from saver import saver`
