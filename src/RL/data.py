from src.dse import GNNModel
from src.RL import dse_utils, rl_utils
from src.parameter import DesignPoint
from src.config import FLAGS

from torch_geometric.data import DataLoader, Data
from typing import List, Generator, NamedTuple
import torch
import numpy as np
import networkx as nx

# maintain a set that is not in the dataset
class PrivateDB:
    def __init__(
        self, ori_db_path: str, g: nx.Graph, reg_model: GNNModel, class_model: GNNModel,
        kernel = None
    ):
        self.ori_db_path = ori_db_path; self.G = g
        self.reg_model = reg_model; self.class_model = class_model
        self.kernel = kernel
        assert self.ready()
    
    def ready(self):
        if self.ori_db_path != None:
            self.reg_data_list = dse_utils.get_datalist(
                self.ori_db_path, self.G, 'regression', self.reg_model, no_point=True, uniform_pragma=True, max_pragma_length=21,
                kern = self.kernel
            )
            self.class_data_list, self.key_dict = dse_utils.get_datalist(
                self.ori_db_path, self.G, 'class', self.class_model, True, no_point=True, uniform_pragma=True, max_pragma_length=21,
                kern = self.kernel
            )
        else:
            self.reg_data_list = []
            self.class_data_list = []
            self.key_dict = dict() # key to Result
        return True
    
    def clear(self):
        self.ready()
    
    def dump(self):
        print('=========== private database ============')
        print(f'Has {len(self.key_dict)} designs')
        print(f'N reg: {len(self.reg_data_list)}')
        print(f'N class: {len(self.class_data_list)}')
        if len(self.key_dict) < 100:
            print('Keys:')
            for key in self.key_dict:
                print(key)
        print('=========================================', flush=True)
    
    def extend(self, new_db_path: str):
        self.reg_data_list = self.reg_data_list + dse_utils.get_datalist(
            new_db_path, self.G, 'regression', self.reg_model,
            kern = self.kernel
        )
        new_class_list, new_key_dict = dse_utils.get_datalist(
            new_db_path, self.G, 'class', self.class_model, True,
            kern = self.kernel
        )
        self.class_data_list = self.class_data_list + new_class_list
        _min_best_perf = float('inf')
        chosen = None
        self.key_dict.update(new_key_dict)
        for _item in new_key_dict.items():
            if _item[1].valid and _item[1].perf < _min_best_perf:
                _min_best_perf = _item[1].perf
                chosen = _item[1]
        return chosen
    
    def get_loader(self, shuffle=True, batch_size = FLAGS.batch_size):
        reg_loader, class_loader = None, None
        if len(self.reg_data_list) != 0:
            reg_loader = DataLoader(self.reg_data_list, batch_size = batch_size, shuffle=shuffle)
        if len(self.class_data_list) != 0:
            class_loader = DataLoader(self.class_data_list, batch_size = batch_size, shuffle=shuffle)
        return reg_loader, class_loader

    def is_exist(self, point: DesignPoint):
        return rl_utils.point_to_str(point) in self.key_dict
    
class RolloutBufferSamples(NamedTuple):
    observations: List[Data]
    actions: torch.LongTensor
    old_values: torch.FloatTensor
    old_log_prob: torch.FloatTensor
    advantages: torch.FloatTensor
    returns: torch.FloatTensor
    expert_actions: torch.LongTensor
    
# need new rollout buffer because we need to store graph data
class RolloutBuffer:
    def __init__(
        self, buffer_size: int, n_envs: int, gae_lambda: float, gamma: float,
        device: torch.device, have_expert = False
    ):
        self.buffer_size, self.n_envs = buffer_size, n_envs
        self.gae_lambda, self.gamma = gae_lambda, gamma
        self.device = device
        self.generator_ready = False
        self.have_expert = have_expert
        self.reset()
        
    def reset(self):
        self.pos = 0
        self.observations = np.array([[None for i in range(self.n_envs)] for j in range(self.buffer_size)], dtype=object)
        self.actions = np.zeros((self.buffer_size, self.n_envs), dtype=np.int32)
        self.rewards = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        self.returns = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        self.episode_starts = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        self.values = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        self.log_probs = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        self.advantages = np.zeros((self.buffer_size, self.n_envs), dtype=np.float32)
        if self.have_expert:
            self.expert_actions = np.zeros((self.buffer_size, self.n_envs), dtype=np.int32)
        self.generator_ready = False
        
    def swap_and_flatten(arr: np.ndarray) -> np.ndarray:
        shape = arr.shape
        if len(shape) < 3:
            assert len(shape) == 2
            return arr.swapaxes(0, 1).reshape((shape[0] * shape[1],))
        return arr.swapaxes(0, 1).reshape(shape[0] * shape[1], *shape[2:])
    
    def compute_returns_and_advantages(self, last_values: np.ndarray, dones: np.ndarray, normalize = False) -> None:
        # TODO: maybe done this part on GPU if memory allowed?
        next_values = None
        next_is_not_terminal = None
        for t in range(self.buffer_size-1, -1, -1):
            if t == self.buffer_size - 1:
                next_values = last_values
                next_is_not_terminal = 1. - dones
            else:
                next_values = self.values[t+1]
                next_is_not_terminal = 1. - self.episode_starts[t+1]
            delta_t = self.rewards[t] + self.gamma * next_values * next_is_not_terminal - self.values[t]
            if t == self.buffer_size - 1:
                self.advantages[t] = delta_t
            else:
                self.advantages[t] = delta_t + \
                    self.gamma * self.gae_lambda * next_is_not_terminal * self.advantages[t+1]
        self.returns = self.advantages + self.values
        if normalize:
            print('[WARNING] Normalizing Globally')
            self.advantages = (self.advantages - self.advantages.mean()) / (self.advantages.std() + 1e-8)
    
    # assume all parameters have std::move()
    def append(
        self, ob: List[Data], action: np.ndarray, reward: np.ndarray, episode_start: np.ndarray,
        value: np.ndarray, log_prob: np.ndarray, expert_action: np.ndarray = None
    ):
        assert not self.pos == self.buffer_size
        _pos = self.pos
        self.observations[_pos] = ob
        self.actions[_pos] = action
        self.rewards[_pos] = reward
        self.episode_starts[_pos] = episode_start
        self.values[_pos] = value
        self.log_probs[_pos] = log_prob
        if self.have_expert:
            assert expert_action is not None
            self.expert_actions[_pos] = expert_action
        self.pos += 1
    
    def get(self, batch_size: int) -> Generator[RolloutBufferSamples, None, None]:
        indices = np.random.permutation(self.buffer_size * self.n_envs)
        # Prepare the data
        if not self.generator_ready:
            _tensor_names = [
                "observations",
                "actions",
                "values",
                "log_probs",
                "advantages",
                "returns",
            ]
            if self.have_expert:
                _tensor_names.append("expert_actions")

            for tensor in _tensor_names:
                self.__dict__[tensor] = RolloutBuffer.swap_and_flatten(self.__dict__[tensor])
            self.generator_ready = True
        start_idx = 0
        while start_idx < self.buffer_size * self.n_envs:
            yield self._get_samples(indices[start_idx : start_idx + batch_size])
            start_idx += batch_size

    def _get_samples(
        self,
        batch_inds: np.ndarray
    ) -> RolloutBufferSamples:
        # print(self.observations[batch_inds[0]].x.device)
        data = [
            [ob.to(self.device) for ob in self.observations[batch_inds].tolist()],
            torch.LongTensor(self.actions[batch_inds]).to(self.device),
            torch.FloatTensor(self.values[batch_inds]).to(self.device),
            torch.FloatTensor(self.log_probs[batch_inds]).to(self.device),
            torch.FloatTensor(self.advantages[batch_inds]).to(self.device),
            torch.FloatTensor(self.returns[batch_inds]).to(self.device),
        ]
        if self.have_expert:
            data.append(
                torch.LongTensor(self.expert_actions[batch_inds]).to(self.device)
            )
        else:
            data.append(None)
        return RolloutBufferSamples(*tuple(data))
    
    
class StorageSamples(NamedTuple):
    observations: List[Data]
    actions: torch.LongTensor
    
class Storage:
    def __init__(
        self, buffer_size: int, n_envs: int, device: torch.device,
        keep_first = None
    ):
        self.buffer_size, self.n_envs = buffer_size, n_envs
        self.device = device
        self.keep_first = keep_first
        self.reset()
        
    def reset(self):
        self.pos = 0
        self.observations = np.array([[None for i in range(self.n_envs)] for j in range(self.buffer_size)], dtype=object)
        self.actions = np.zeros((self.buffer_size, self.n_envs), dtype=np.int32)
        self.full = False
        
    def swap_and_flatten(arr: np.ndarray) -> np.ndarray:
        shape = arr.shape
        if len(shape) < 3:
            assert len(shape) == 2
            return arr.swapaxes(0, 1).reshape((shape[0] * shape[1],))
        return arr.swapaxes(0, 1).reshape(shape[0] * shape[1], *shape[2:])
    
    # assume all parameters have std::move()
    def append(
        self, ob: List[Data], action: np.ndarray
    ):
        # assert not self.pos == self.buffer_size
        self.pos = self.pos % self.buffer_size
        _pos = self.pos
        self.observations[_pos] = ob
        self.actions[_pos] = action
        self.pos += 1
        if self.pos == self.buffer_size:
            print('HIIII', self.pos)
            self.full = True
            if self.keep_first != None:
                self.pos = self.keep_first
            print(self.pos)
    
    def get(self, batch_size: int) -> Generator[RolloutBufferSamples, None, None]:
        if not self.full:
            L = self.pos
        else:
            L = self.buffer_size
        indices = np.random.permutation(L * self.n_envs)
        self.flat_obs = self.observations[:L, :].swapaxes(0, 1).reshape((L * self.n_envs,))
        self.flat_acs = self.actions[:L, :].swapaxes(0, 1).reshape((L * self.n_envs,))

        start_idx = 0
        while start_idx+batch_size < L * self.n_envs:
            yield self._get_samples(indices[start_idx : start_idx + batch_size])
            start_idx += batch_size

    def _get_samples(
        self,
        batch_inds: np.ndarray
    ) -> StorageSamples:
        # print(self.flat_obs[batch_inds[0]].x.device)
        data = [
            [ob.clone() for ob in self.flat_obs[batch_inds].tolist()],
            torch.LongTensor(self.flat_acs[batch_inds]),
        ]
        return StorageSamples(*tuple(data))