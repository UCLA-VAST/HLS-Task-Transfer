import torch
from torch import nn
import matplotlib
matplotlib.use('pdf')
import matplotlib.pyplot as plt
import numpy as np

from utils import MLP

torch.manual_seed(0)

# def gaussianNLL(out=None, target=None):
#     '''
#         out should include mu and sigma
#         https://towardsdatascience.com/get-uncertainty-estimates-in-neural-networks-for-free-48f2edb82c8f
#     '''
#     if out is not None:
#         mu = out[:, 0].reshape(-1, 1)
#         log_sigma = out[:, 1].reshape(-1, 1)
#         sigma = torch.exp(log_sigma)
        

#         return torch.mean(log_sigma + (1/sigma) * ((target - mu))**2) / 2
#     else:
#         return None
    
def gaussianNLL(out=None, target=None, beta=1):
        '''
            out should include mu and sigma
            https://towardsdatascience.com/get-uncertainty-estimates-in-neural-networks-for-free-48f2edb82c8f
        '''
        if out is not None:
            mu = out[:, 0].reshape(-1, 1)
            log_var = out[:, 1].reshape(-1, 1)
            var = torch.exp(log_var)
            
            if beta > 0:
                scalar = (var.detach() ** beta)
            else:
                scalar = torch.ones(var.shape)
        

            return torch.mean((log_var / 2 + (1/2) * (1/var) * ((target - mu))**2) * scalar) 
        else:
            return None

if __name__ == '__main__':

    x = torch.FloatTensor(1000, 1).uniform_(0, 20)
    sig = 0.3; mu = 0.0
    sig = 0.2 * (x + 1); mu = 0.0
    y = torch.sin(x)  # + torch.normal(mu, sig) #, size=(1000, 1))
    fig, ax = plt.subplots(1, 1, figsize=(12, 8))
    ax = [ax, ax]
    # ax[0].scatter(np.arange(len(x)), x)
    # ax[0].set_title(f'x')
    # ax[1].scatter(np.arange(len(y)), y)
    # ax[1].set_title(f'y')
    # ax[0].scatter(x, y)
    # ax[0].set_title('y over x')
    # plt.show()
    
    
    trainloader = torch.utils.data.DataLoader(x, batch_size=64, shuffle=True)

    hidden_channels = [4, 8, 4]
    model = MLP(1, 2, activation_type='elu',
                    hidden_channels=hidden_channels,
                    num_hidden_lyr=len(hidden_channels))
    
    loss_function = nn.GaussianNLLLoss()
    beta = 0.0
    loss_function = gaussianNLL
    # loss_function = nn.MSELoss()
    my_softplus = nn.Softplus()
    optimizer = torch.optim.Adam(model.parameters(), lr=0.004)
    
    for epoch in range(6000):
        curr_loss = 0.0
        
        out = model(x)
        # var = my_softplus(out[:, 1].reshape(-1, 1))
        # loss = loss_function(out[:, 0].reshape(-1, 1), y, var)
        
        loss = loss_function(out, y)
        optimizer.zero_grad()
        loss.backward()
        
        optimizer.step()
        
        print(f'epoch {epoch}, loss: {loss}')
    
    mu = out[:, 0].reshape(-1, 1).detach().numpy()
    ax[1].scatter(x, y, color='g', label='true value: torch.sin(x)')
    ax[1].scatter(x, mu, s=10, color='b', marker='x', label='pred (my gaussian NLL)')
    # sigma = (torch.sqrt(my_softplus(out[:, 1].reshape(-1, 1)))).detach().numpy()
    sigma = torch.sqrt(torch.exp(out[:, 1].reshape(-1, 1))).detach().numpy()
    ax[1].scatter(x, mu + sigma, color='r', label='pred + sigma')
    ax[1].scatter(x, mu - sigma, color='r', label='pred - sigma')
    ax[1].scatter(x, sigma, color='pink', label='sigma')
    ax[1].set_title('pred over x')
    ax[1].legend()

    fig.savefig('x_y.png')