
import torch
from torch_scatter import scatter_add
from torch_geometric.utils import softmax

from torch_geometric.nn.inits import reset
from torch.nn.modules import Module
from torch.nn.utils import parametrize
from torch.nn.utils.parametrizations import _SpectralNorm

import torch.nn.functional as F

from typing import Optional


class MyGlobalAttention(torch.nn.Module):
    r"""Global soft attention layer from the `"Gated Graph Sequence Neural
    Networks" <https://arxiv.org/abs/1511.05493>`_ paper

    .. math::
        \mathbf{r}_i = \sum_{n=1}^{N_i} \mathrm{softmax} \left(
        h_{\mathrm{gate}} ( \mathbf{x}_n ) \right) \odot
        h_{\mathbf{\Theta}} ( \mathbf{x}_n ),

    where :math:`h_{\mathrm{gate}} \colon \mathbb{R}^F \to
    \mathbb{R}` and :math:`h_{\mathbf{\Theta}}` denote neural networks, *i.e.*
    MLPS.

    Args:
        gate_nn (torch.nn.Module): A neural network :math:`h_{\mathrm{gate}}`
            that computes attention scores by mapping node features :obj:`x` of
            shape :obj:`[-1, in_channels]` to shape :obj:`[-1, 1]`, *e.g.*,
            defined by :class:`torch.nn.Sequential`.
        nn (torch.nn.Module, optional): A neural network
            :math:`h_{\mathbf{\Theta}}` that maps node features :obj:`x` of
            shape :obj:`[-1, in_channels]` to shape :obj:`[-1, out_channels]`
            before combining them with the attention scores, *e.g.*, defined by
            :class:`torch.nn.Sequential`. (default: :obj:`None`)
    """
    def __init__(self, gate_nn, nn=None):
        super(MyGlobalAttention, self).__init__()
        self.gate_nn = gate_nn
        self.nn = nn

        self.reset_parameters()

    def reset_parameters(self):
        reset(self.gate_nn)
        reset(self.nn)

    def forward(self, x, batch, set_zeros_ids=None, size=None):
        """"""
        x = x.unsqueeze(-1) if x.dim() == 1 else x
        size = batch[-1].item() + 1 if size is None else size

        gate = self.gate_nn(x).view(-1, 1)
        x = self.nn(x) if self.nn is not None else x
        assert gate.dim() == x.dim() and gate.size(0) == x.size(0)

        gate = softmax(gate, batch, num_nodes=size)

        if set_zeros_ids is not None:
            # x[set_zeros_ids] = 0
            # x.masked_fill(set_zeros_ids, 0)
            x = x.permute((1, 0))
            x = x * set_zeros_ids
            x = x.permute((1, 0))

        out = scatter_add(gate * x, batch, dim=0, dim_size=size)

        return out, gate

    def __repr__(self):
        return '{}(gate_nn={}, nn={})'.format(self.__class__.__name__,
                                              self.gate_nn, self.nn)
        
class _ScaleSpectralNorm(_SpectralNorm):
    def __init__(
        self,
        weight: torch.Tensor,
        c: float,
        n_power_iterations: int = 1,
        dim: int = 0,
        eps: float = 1e-12
    ) -> None:
        super(_ScaleSpectralNorm, self).__init__(weight, n_power_iterations, dim, eps)
        self.c = torch.as_tensor(c, dtype=torch.float32)
    
    def forward(self, weight: torch.Tensor) -> torch.Tensor:
        if weight.ndim == 1:
            # Faster and more exact path, no need to approximate anything
            return F.normalize(weight, dim=0, eps=self.eps)
        else:
            weight_mat = self._reshape_weight_to_matrix(weight)
            if self.training:
                self._power_method(weight_mat, self.n_power_iterations)
            u = self._u.clone(memory_format=torch.contiguous_format)
            v = self._v.clone(memory_format=torch.contiguous_format)
            sigma = torch.dot(u, torch.mv(weight_mat, v))
            if sigma > self.c:
                return self.c * weight / sigma
            return weight

def scale_spectral_norm(
    module: Module,
    c: float,
    name: str = 'weight',
    n_power_iterations: int = 1,
    eps: float = 1e-12,
    dim: Optional[int] = None
) -> Module:
    # spectral normalization with scaling factor c
    weight = getattr(module, name, None)
    if not isinstance(weight, torch.Tensor):
        raise ValueError(
            "Module '{}' has no parameter or buffer with name '{}'".format(module, name)
        )

    if dim is None:
        if isinstance(module, (torch.nn.ConvTranspose1d,
                               torch.nn.ConvTranspose2d,
                               torch.nn.ConvTranspose3d)):
            dim = 1
        else:
            dim = 0
    parametrize.register_parametrization(module, name, _ScaleSpectralNorm(weight, c, n_power_iterations, dim, eps))
    return module

