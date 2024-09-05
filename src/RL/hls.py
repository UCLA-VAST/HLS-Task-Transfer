from subprocess import Popen, PIPE, STDOUT, TimeoutExpired
from typing import List, Dict, Any
from sortedcontainers import SortedDict
from glob import iglob
import os, time, pickle, pickle5, dataclasses, io, copy
import redis
import numpy as np
from os.path import join as join_path

from src.parameter import DesignPoint, gen_key_from_design_point
from src.result import Result
from src.utils import dirname, get_root_path
from src.programl_data import GEXF_FOLDER
from src.config import FLAGS
from src.RL import rl_utils
from src.RL.rl_utils import RoundAboutPickler
from src.RL.data import PrivateDB

class ResItem:
    def __init__(self, res: Result):
        self.res = res
    def __lt__(self, A: 'ResItem'):
        if self.res.valid and not self.A.res.valid:
            return False
        elif not self.res.valid and self.A.res.valid:
            return True
        return self.res.perf < A.res.perf
    def __eq__(self, A: 'ResItem'):
        return self.res.valid == A.valid and self.res.perf == A.perf
    def __gt__(self, A: 'ResItem'):
        return not self.__lt__(A) and not self.__eq__(A)

@dataclasses.dataclass
class RemotePars:
    local_root_dir = '/home/zijd/dse/software-gnn'
    # remote_root_dir = '/home/zijd/dse/software-gnn'
    remote_root_dir = '/home/zijd/dse/tmp/software-gnn'
    _remote_push_path = f'{remote_root_dir}/remote' + '/{}'
    _remote_pull_path = f'{remote_root_dir}/remote' + '/{}'
    _local_push_path = f'{local_root_dir}/tmp_tmp' + '/{}'
    _local_pull_path = f'{local_root_dir}/tmp_tmp' + '/{}'
    
remote_pars = RemotePars

@dataclasses.dataclass
class LocalPars:
    gexf_dir = GEXF_FOLDER
    version_code = 'v20' if FLAGS.v2_db else 'v18'
    if FLAGS.v2_db and FLAGS.v21: version_code = 'v21'
    db_dir = f'{get_root_path()}/dse_database/**/databases/{version_code}/one-db/one-db-extended-round{FLAGS.round_num}/**'
    pass
    
local_pars = LocalPars

class BaseHQ:
    def __init__(self):
        pass
    def append(self, res: Result):
        raise NotImplementedError()
    def query_batch_remote(self, timeout: int):
        raise NotImplementedError()

class PrivateHQ:
    def __init__(self, n: int, B: int, dataset: str, kernel_name: str, uid: int, db_id: int = 0, conda_env_name: str = 'dse'):
        self.n = n; self.B = B; self.dataset = dataset; self.kernel_name = kernel_name; 
        self.uid = uid; self.db_id = db_id; self.conda_env_name = conda_env_name
        self.buf: SortedDict = SortedDict()
        self.keys = set()
        self.cnt_query = 0
        
    def append(self, res: Result):
        if res.point is None:
            return
        # assert res.valid
        _key = gen_key_from_design_point(res.point)
        if _key in self.keys:
            return
        # if not isinstance(res.perf, float):
        #     print(res.perf, type(res.perf))
        self.buf[(float(res.perf), _key)] = res
        self.keys.add(_key)
        if len(self.buf) > self.n:
            self.buf.popitem(0)
            
    def resize(self, new_n: int):
        self.clear()
        self.n = new_n
            
    def clear(self):
        self.buf: SortedDict = SortedDict()
        self.keys = set()
        
    def dump(self):
        for i in range(len(self.buf)):
            print(self.buf.peekitem(i)[0])
            
    def to_dict(self):
        ret = dict()
        for i in range(len(self.buf)):
            item = self.buf.peekitem(i)
            ret[item[0]] = item[1]
        return ret
            
    def query_batch_remote(self, timeout: int, no_ssh: bool = False): # timeout (min)
        def _run(_cmd: str, verbose=False, error_retry = True):
            p = Popen(_cmd, stdout=PIPE, stderr=PIPE, shell=True, executable='/bin/bash')
            # p = Popen(_cmd, stdout=PIPE, stderr=PIPE)
            _success = False
            for i in range(20):
                try:
                    outs, errs = p.communicate(timeout=30)
                except TimeoutExpired:
                    print(_cmd, f'timeout, retrying {i}')
                else: 
                    if errs == b'' or not error_retry:
                        _success = True
                        break
            if verbose:
                print('==========================')
                print('CMD:', _cmd)
                print('outs:', outs.decode().strip('\n'))
                print('errs:', errs.decode().strip('\n'))
                print('==========================')
                print('', flush=True)
            assert _success # quit the job is not failed
            return outs, errs
        
        self.cnt_query += 1
        _save_dict = dict()
        for i in range(min(self.B, len(self.buf))):
            _idx = -(i + 1)
            _item = self.buf.peekitem(_idx)
            print(f'Design {i}: {_item[0]}')
            _save_dict[_item[0]] = _item[1]
        print('')
        _remote_root_dir = remote_pars.remote_root_dir
        _local_push_path = remote_pars._local_push_path.format(f'{self.uid}/{self.cnt_query}/{self.kernel_name}_candi.pickle')
        _local_pull_path = dirname(_local_push_path)
        _remote_push_path = remote_pars._remote_push_path.format(f'{self.uid}')
        _remote_pull_path = remote_pars._remote_pull_path.format(f'{self.uid}')
        os.makedirs(dirname(_local_push_path), exist_ok=True)
        with open(_local_push_path, 'wb') as handle:
            pickle.dump(_save_dict, handle, protocol=pickle.HIGHEST_PROTOCOL)
            handle.flush()
            
        _remote_jump_cmd = f'ssh -J zijd@cdsc0.cs.ucla.edu zijd@10.1.128.80'
        if no_ssh:
            _remote_jump_cmd = ''
        if no_ssh:
            _remote_push_cmd = (
                f'mkdir -p {_remote_push_path}\n'
                f'cp \'{_local_push_path}\' \'{_remote_push_path}\''
            )
        else:
            _remote_push_cmd = (
                f'{_remote_jump_cmd} \'mkdir -p {_remote_push_path}\'\n'
                f'scp -oProxyJump=zijd@cdsc0.cs.ucla.edu \'{_local_push_path}\'' 
                f'  zijd@10.1.128.80:\'{_remote_push_path}\''
            )
        outs, errs = _run(_remote_push_cmd, True)
        if outs != b'' or errs != b'':
            assert 0, 'Error sending pickle to remote'
        
        if not no_ssh:
            _remote_run_cmd = (
                f'{_remote_jump_cmd} \'source /home/zijd/anaconda3/bin/activate {self.conda_env_name}\n'
                f'cd {_remote_root_dir}/src\n'
                f'nohup python parallel_run_tool_dse.py --kernel {self.kernel_name}'
                f'  --benchmark {self.dataset} --root-dir {_remote_root_dir} --pickle_path {_remote_push_path} --redis-port {FLAGS.port}'
                f'  --db_id {self.db_id} --version v18 --timeout {timeout} </dev/null >nohup.out 2>&1 &\n'
                f'echo $! > {_remote_push_path}/pid.nohup\n'
                f'cat {_remote_push_path}/pid.nohup\''
            )
        else:
            _remote_run_cmd = (
                f'source /home/zijd/anaconda3/bin/activate {self.conda_env_name}\n'
                f'cd {_remote_root_dir}/src\n'
                f'nohup python parallel_run_tool_dse.py --kernel {self.kernel_name}'
                f'  --benchmark {self.dataset} --root-dir {_remote_root_dir} --pickle_path {_remote_push_path} --redis-port {FLAGS.port}'
                f'  --db_id {self.db_id} --version {local_pars.version_code} --timeout {timeout} </dev/null >nohup.out 2>&1 &\n'
                f'echo $! > {_remote_push_path}/pid.nohup\n'
                f'cat {_remote_push_path}/pid.nohup'
            )
        outs, errs = _run(_remote_run_cmd, True)
        if errs != b'':
            assert 0, 'Run remote process failed'
        _pid = outs.decode().strip('\n')
        _running = True
        if no_ssh:
            _remote_poll_cmd = f'ps -efax -o pid | grep -w {_pid}'
        else:
            _remote_poll_cmd = f'{_remote_jump_cmd} \'ps -efax -o pid | grep -w {_pid}\''
        print('================= HLS ==================')
        print('Poll CMD:', _remote_poll_cmd)
        print('Running HLS', end='', flush=True)
        _tic = time.time()
        _nxt_checkpoint = 0
        while _running:
            outs, errs = _run(_remote_poll_cmd)
            _running = str(_pid) in outs.decode().strip('\n')
            if outs != b'':
                assert _running == True
            if _running != True:
                if _nxt_checkpoint < 60:
                    print(outs.decode())
                    print(errs.decode())
            print('.', end='', flush=True)
            time.sleep(10.0)
            if (time.time() - _tic) / 60 > _nxt_checkpoint:
                print('')
                print(f'{_nxt_checkpoint} minutes passed')
                _nxt_checkpoint += 10
                print('Running HLS', end = '', flush=True)
        print('')
        print('HLS done!')
        
        print('========================================')
        print('')
        
        # download the results
        if no_ssh:
            _remote_pull_cmd = (
                f'cp {_remote_pull_path}/{self.kernel_name}_result_updated-this-round-0.db'
                f'  {_local_pull_path}'
            )
        else:
            _remote_pull_cmd = (
                f'scp -oProxyJump=zijd@cdsc0.cs.ucla.edu zijd@10.1.128.80:\'{_remote_pull_path}/{self.kernel_name}_result_updated-this-round-0.db\''
                f'  {_local_pull_path}'
            )
        outs, errs = _run(_remote_pull_cmd, True)
        if outs != b'' or errs != b'':
            assert 0, 'Error getting db-this-round from remote'
        return f'{_local_pull_path}/{self.kernel_name}_result_updated-this-round-0.db'

def call_hls(res_lists: List[List[Result]], db: PrivateDB, hq: PrivateHQ, timeout: int = 1, no_ssh: bool = False):
    hq.clear()
    _cnt = 0
    min_exist_perf = float('inf')
    chosen = None
    predicted_top_perf = -float('inf')
    for res_list in res_lists:
        for res in res_list:
            assert res.point is not None and res.point is not {}
            if res.valid:
                predicted_top_perf = max(predicted_top_perf, res.perf)
            if db is None or not db.is_exist(res.point):
                if res.valid:
                    hq.append(res)
            else:
                _cnt += 1
                _res = db.key_dict[rl_utils.point_to_str(res.point)] # real hls result
                if _res.valid and _res.perf < min_exist_perf:
                    min_exist_perf = _res.perf
                    chosen = _res
    print(f'Total {_cnt} points ignored')
    print(f'Best predicted perf: {predicted_top_perf}')
    if chosen is not None:
        print(f'Exist (real) best: {min_exist_perf}, point: {chosen.point}')
    print('HLS Top 5:')
    for i in range(5):
        print(hq.buf.peekitem(-(i+1))[0])
    print('')
    return hq.query_batch_remote(timeout, no_ssh), chosen

def test_private():
    db_paths = [f for f in iglob(local_pars.db_dir, recursive=True) if f.endswith('.db') and 'poly' in f and '2mm' in f]
    assert len(db_paths) == 1
    db_path = db_paths[0]
    hq = PrivateHQ(2, 2, 'poly', '2mm', 'dfba89cd-f9bc-4025-99e0-c58714abd473')
    r1 = Result()
    r1.point = dict({
        '__PARA__L0': 1, '__PARA__L1': 1, '__PARA__L2': 2, '__PARA__L3': 1, '__PARA__L4': 70, '__PARA__L5': 1, 
        '__PIPE__L0': 'off', '__PIPE__L1': 'off', '__PIPE__L2': '', '__PIPE__L3': 'flatten', 
        '__TILE__L0': 1, '__TILE__L1': 1, '__TILE__L2': 1, '__TILE__L3': 1
    })
    r1.valid = True
    r1.perf = 4.9
    hq.append(r1)
    r2 = Result()
    r2.point = dict({
        '__PARA__L0': 1, '__PARA__L1': 1, '__PARA__L2': 2, '__PARA__L3': 4, '__PARA__L4': 1, '__PARA__L5': 1, 
        '__PIPE__L0': 'off', '__PIPE__L1': '', '__PIPE__L2': 'flatten', '__PIPE__L3': 'flatten', 
        '__TILE__L0': 1, '__TILE__L1': 1, '__TILE__L2': 1, '__TILE__L3': 1
    })
    r2.valid = True
    r2.perf = 5.0
    hq.append(r2)
    print(hq.buf)
    r1.perf = 4.8
    hq.append(r1)
    print(hq.buf)
    hq.clear()
    hq.append(r1)
    print(hq.buf)
    # new_db_path = hq.query_batch_remote(1)
    # new_db_path = '/home/zijd/dse/software-gnn/tmp/dfba89cd-f9bc-4025-99e0-c58714abd473/1/2mm_result_updated-this-round-0.db'
    new_db_path = '/home/zijd/dse/software-gnn/tmp/dfba89cd-f9bc-4025-99e0-c58714abd473/2mm_result_updated-0.db'
    database = redis.StrictRedis(host='localhost', port=6379)
    database.flushdb()

    with open(new_db_path, 'rb') as handle:
        try:
            new_data = pickle.load(handle)
        except:
            new_data = pickle5.load(handle)
        database.hmset(0, new_data)
        keys = [k.decode('utf-8') for k in database.hkeys(0)]
        min_perf = float('inf')
        max_perf = -float('inf')
        cnt_invalid = 0
        cnt_valid = 0
        for key in sorted(keys):
            pickle_obj = database.hget(0, key)
            if pickle_obj is None:
                continue
            obj = RoundAboutPickler(io.BytesIO(pickle_obj)).load()
            if type(obj) is int or type(obj) is dict:
                continue
            assert obj.point != {}
            if key[0:3] == 'lv1':
                cnt_invalid += 1
                continue
            elif not FLAGS.invalid and obj.perf < FLAGS.min_allowed_latency:
                cnt_invalid += 1
                continue
            assert obj.perf != 0
            if obj.valid:
                min_perf = min(min_perf, obj.perf)
                max_perf = max(max_perf, obj.perf)
                cnt_valid += 1
            else:
                cnt_invalid += 1
        print('Valid:', cnt_valid, 'Invalid:', cnt_invalid)
        print('Min:', min_perf, 'Max:', max_perf)
        
def get_db_path_default(dataset: str, kernel_name: str):
    db_paths = [f for f in iglob(local_pars.db_dir, recursive=True) if f.endswith('.db') and f'{dataset}' in f and f'{kernel_name}_' in f]
    ori_db_path = None
    if len(db_paths) != 0:
        assert len(db_paths) == 1
        ori_db_path = db_paths[0]
    return ori_db_path
        
if __name__ == '__main__':
    test_private()