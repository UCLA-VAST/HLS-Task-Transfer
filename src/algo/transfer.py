from src.RL import dse_utils, rl_utils
from src.dse import GNNModel
from src.model import DomainNet, MulNet
from src.config import FLAGS, parser
from src.programl_data import MyOwnDataset
from torch_geometric.loader import DataLoader
from torch_geometric.data import Data
from tqdm.rich import tqdm

import torch, os, pytorch_warmup, argparse
import numpy as np
from typing import Dict, Any

def to_cpu(ds):
    for dt in tqdm(ds): dt.to('cpu')

def to_gpu(ds, device):
    device = torch.device(device)
    return [dt.to(device) for dt in ds]

def split_dataset(ds, seed, n_val, n_test = None):
    if n_test is not None:
        splits = torch.utils.data.random_split(
            ds, [len(ds)-n_val-n_test, n_val, n_test],
            generator=torch.Generator().manual_seed(seed)
        )
        return splits[0], splits[1], splits[2]
    splits = torch.utils.data.random_split(
        ds, [len(ds)-n_val, n_val], generator=torch.Generator().manual_seed(seed)
    )
    return splits[0], splits[1]

def train_model(
    train_dataset, val_dataset, test_dataset, model: GNNModel, n_epoch: int, batch_size: int, 
    end_lr = 1e-5, save_path = None, verbose = False, st_lr = 1e-3
):
    min_loss = -float('inf') if model.task == 'class' else float('inf')
    chose_test_loss = float('inf')
    for dt1, dt2 in zip(train_dataset, val_dataset):
        assert dt1.x.device == torch.device(model.device)
        assert dt2.x.device == torch.device(model.device)
    if test_dataset is not None:
        for dt in test_dataset:
            assert dt.x.device == torch.device(model.device)
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    val_loader = DataLoader(val_dataset, batch_size=3072, shuffle=False)
    test_loader = DataLoader(test_dataset, batch_size=3072, shuffle=False) if test_dataset is not None else None
    print('Train', len(train_dataset), 'Val', len(val_dataset))
    if test_dataset is not None:
        print('Test', len(test_dataset))
    else: print('No Test')
    model.get_optimizer(st_lr, 1e-4)
    model.get_lr_scheduler(n_epoch*len(train_loader), end_lr)
    if isinstance(model.model, DomainNet):
        model.model.set_tot_step(n_epoch*len(train_loader))
        model.model.step = 0
        u_ds = val_dataset + test_dataset
        u_loader = DataLoader(u_ds, batch_size=batch_size, shuffle=True)
        u_iter = iter(u_loader)
    else:
        u_loader = None
        u_iter = None
    for i in tqdm(range(n_epoch)):
        if i % 10 == 9:
            print(f'{i}:', 'Test:', np.round(chose_test_loss, decimals=3), 'Val:', np.round(min_loss, decimals=3), flush=True)
        model.finetune(train_loader, 1, verbose=verbose, u_loader=u_loader, u_iter=u_iter)
        if len(val_loader) == 0:
            continue
        if model.task == 'class':
            _, res = model.test_accuracy(val_loader, verbose=False)
            res = float(res.detach().cpu().numpy())
            res /= len(val_dataset)
        else:
            res = model.test_accuracy(val_loader, verbose=False).detach().cpu().numpy()
        if i % 10 == 0:
            print(np.round(res, decimals=3), flush=True)
        mark = res < min_loss if model.task == 'regression' else res > min_loss
        if mark:
            res_test = float('inf')
            min_loss = res
            chose_test_loss = res_test
            print(f'{i} Val:', np.round(min_loss, decimals=3), flush=True)
            print(f'{i} Test:', np.round(chose_test_loss, decimals=3), flush=True)
            if save_path is not None:
                if not os.path.exists(os.path.dirname(save_path)):
                    os.makedirs(os.path.dirname(save_path), exist_ok=True)
                torch.save(model.model.state_dict(), save_path)
    if len(val_loader) != 0:
        model.model.load_state_dict(torch.load(save_path,map_location='cpu'))
    if model.task == 'class':
        _, res_train = model.test_accuracy(train_loader, verbose=False)
        res_train = float(res_train.detach().cpu().numpy())
        res_train /= len(train_dataset)
        print(f'{i} Train:', np.round(res_train, decimals=3), flush=True)
    elif model.task == 'regression':
        res_train = model.test_accuracy(train_loader, verbose=False).detach().cpu().numpy()
        print(f'{i} Train:', np.round(res_train, decimals=3), flush=True)
    if test_loader is not None:
        if model.task == 'class':
            _, res_test = model.test_accuracy(test_loader, verbose=False)
            res_test = float(res_test.detach().cpu().numpy())
            res_test /= len(test_dataset)
        else:
            res_test = model.test_accuracy(test_loader, verbose=False).detach().cpu().numpy()
        print(f'{i} Test:', np.round(res_test, decimals=3), flush=True)
        
        
def get_domain_label(ds, _type: str):
    _cnt = 0
    kern_to_id = dict()
    for dt in ds:
        if dt.kernel not in kern_to_id:
            kern_to_id[dt.kernel] = _cnt
            _cnt += 1
    for idx, dt in enumerate(ds):
        _dict = dt.to_dict()
        y = kern_to_id[dt.kernel]
        if _type == 'multiclass':
            _dict['d_y'] = torch.FloatTensor(np.array([y])).type(torch.LongTensor).to(dt.x.device)
        else:
            _dict['d_y'] = torch.zeros((_cnt,1)).type(torch.LongTensor).to(dt.x.device)
            _dict['d_y'][y, 0] = 1.
        ds[idx] = Data.from_dict(_dict)
    for i in range(10):
        idx = np.random.randint(0, len(ds))
        print(ds[idx].d_y.squeeze(), kern_to_id[ds[idx].kernel], ds[idx].kernel)
    return _cnt

def pretrain_exp(param: Dict[str, Any], train_datasets, val_datasets, test_dataset, names, device: torch.device, epoch_num: int, log_path: str):
    assert len(train_datasets) == len(names)
    for idx, ds in enumerate(train_datasets):
        print(len(ds), len(val_datasets[idx]))
    model = MulNet(FLAGS.num_features, len(train_datasets), param, FLAGS.edge_dim, task = 'regression').to(device)
    optimizer = torch.optim.Adam(
        model.parameters(), lr=FLAGS.lr, weight_decay=FLAGS.weight_decay
    )
    
    from tensorboardX import SummaryWriter
    
    train_loaders = []; val_loaders = []
    batch_sizes = [64, 64, 64]
    for i in range(len(train_datasets)):
        if train_datasets[i][0].x.device != torch.device('cpu'):
            train_loaders.append(DataLoader(train_datasets[i], batch_size=batch_sizes[i], shuffle=True))
        else:
            train_loaders.append(DataLoader(train_datasets[i], batch_size=batch_sizes[i], shuffle=True, pin_memory=True, num_workers=2))
        if len(val_datasets[i]): 
            if val_datasets[i][0].x.device != torch.device('cpu'):
                val_loaders.append(DataLoader(val_datasets[i], batch_size=256, shuffle=False))
            else:
                val_loaders.append(DataLoader(val_datasets[i], batch_size=128, shuffle=True, pin_memory=True, num_workers=2))
        else: val_loaders.append([])
    if len(test_dataset):
        if test_dataset[0].x.device != torch.device('cpu'):
            test_loader = DataLoader(test_dataset, batch_size=256, shuffle=False)
        else:
            test_loader = DataLoader(test_dataset, batch_size=128, shuffle=False, pin_memory=True, num_workers=4)
    else:
        test_loader = []
    num_steps = len(train_loaders[-1]) * epoch_num
    
    if FLAGS.scheduler == "multistep":
        lr_scheduler = torch.optim.lr_scheduler.MultiStepLR(optimizer, milestones=[FLAGS.epoch_num // 3], gamma=0.1)
    elif FLAGS.scheduler == "cosine":
        lr_scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=num_steps, eta_min=1e-5)
    else:
        lr_scheduler = torch.optim.lr_scheduler.ExponentialLR(optimizer, gamma=0.9)
    
    if FLAGS.warmup == 'linear':
        warmup_scheduler = pytorch_warmup.UntunedLinearWarmup(optimizer)
    elif FLAGS.warmup == 'exponential':
        warmup_scheduler = pytorch_warmup.UntunedExponentialWarmup(optimizer)
    elif FLAGS.warmup == 'radam':
        warmup_scheduler = pytorch_warmup.RAdamWarmup(optimizer)
    else:
        warmup_scheduler = pytorch_warmup.LinearWarmup(optimizer, 1)

    train_losses, val_losses = [], []
    min_v21_val_loss = float('inf')
    min_v20_val_loss = float('inf')
    min_v19_val_loss = float('inf')
    
    os.makedirs(log_path.format(''), exist_ok=True)
    log_writer = SummaryWriter(log_path.format('runs'))
    
    train_iter1 = iter(train_loaders[1])
    train_iter0 = iter(train_loaders[0])
    train_iter3 = None
    if 'normalize_arch_impl' in param and param['normalize_arch_impl'] != 0.:
        extra_train_loader = DataLoader(
            torch.utils.data.ConcatDataset([train_datasets[-1], val_datasets[-1], test_dataset]),
            batch_size = 128, shuffle=True, pin_memory=True
        )
        train_iter3 = iter(extra_train_loader)
        
    # scaler = torch.cuda.amp.GradScaler()
    for epoch in tqdm(range(epoch_num)):
        print(f'Epoch {epoch}:')
        total_loss_list = [0 for i in range(len(train_datasets))]
        sum_extra_loss = 0.
        model.train()
        for data2 in train_loaders[2]:
            data1, data0 = None, None
            try:
                data1 = next(train_iter1)
            except StopIteration:
                train_iter1 = iter(train_loaders[1])
                data1 = next(train_iter1)
            try:
                data0 = next(train_iter0)
            except StopIteration: 
                train_iter0 = iter(train_loaders[0])
                data0 = next(train_iter0)
            extra_data = None
            if train_iter3 is not None:
                try: extra_data = next(train_iter3)
                except StopIteration:
                    train_iter3 = iter(extra_train_loader)
                    extra_data = next(train_iter3)
            
            data_list = [data0, data1, data2]
            with torch.autocast(device_type='cuda', dtype=torch.float32):
                data_list = [data.to(device) for data in data_list]
                if extra_data is not None: extra_data = extra_data.to(device)
                ret_list = model.forward(data_list)
                extra_loss = model.forward_norm(extra_data)
                loss = ret_list[0][0]
                for i in range(1, len(ret_list)):
                    loss += ret_list[i][0]
                loss += extra_loss
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            for i in range(len(ret_list)):
                total_loss_list[i] += float(ret_list[i][0].item())
            if isinstance(extra_loss, torch.Tensor): sum_extra_loss += float(extra_loss.item())
            else: sum_extra_loss += extra_loss
            lr_scheduler.step(lr_scheduler.last_epoch+1)
            warmup_scheduler.dampen()
        for i in range(len(train_loaders)):
            total_loss_list[i] /= len(train_loaders[2])
        sum_extra_loss /= len(train_loaders[2])
        train_losses.append([ls for ls in total_loss_list])
        for i in range(len(names)):
            log_writer.add_scalar(f'Train_{names[i]}', train_losses[-1][i], epoch)
        log_writer.add_scalar(f'Extra', sum_extra_loss, epoch)
        print(f'Train: {[(names[i], np.round(train_losses[-1][i], decimals=3)) for i in range(len(names))]}', flush=True)
        print(f'Extra:', np.round(float(sum_extra_loss), decimals=5))
        cur_lr = optimizer.param_groups[0]['lr']
        log_writer.add_scalar('lr', float(cur_lr), epoch)
        print(f'lr: {float(cur_lr)}')
        val_loss_list = [0 for i in range(len(val_datasets))]
        iter0 = iter(val_loaders[0])
        iter1 = iter(val_loaders[1])
        iter2 = iter(val_loaders[2])
        model.eval()
        vis = [0 for i in range(3)]
        while np.sum(vis) < 3:
            data0, data1, data2 = None, None, None
            try:
                data0 = next(iter0)
            except StopIteration: data0 = None; vis[0] = 1
            try:
                data1 = next(iter1)
            except StopIteration: data1 = None; vis[1] = 1
            try:
                data2 = next(iter2)
            except StopIteration: data2 = None; vis[2] = 1
            data_list = [data0, data1, data2]
            with torch.no_grad():
                with torch.autocast(device_type='cuda', dtype=torch.float32):
                    for i in range(len(data_list)):
                        if data_list[i] is not None:
                            data_list[i] = data_list[i].to(device)
                    ret_list = model.forward(data_list)
                for i in range(len(ret_list)):
                    val_loss_list[i] += float(ret_list[i][0].item()) * (len(data_list[i]) if data_list[i] is not None else 0)
        for i in range(len(val_loaders)):
            if len(val_datasets[i]) != 0:
                val_loss_list[i] /= len(val_datasets[i])
        val_losses.append([ls for ls in val_loss_list])
        if val_losses[-1][-1] < min_v21_val_loss:
            min_v21_val_loss = val_losses[-1][-1]
            torch.save(model.state_dict(), log_path.format('v21_val.pth'))
        if val_losses[-1][-2] < min_v20_val_loss:
            min_v20_val_loss = val_losses[-1][-2]
            torch.save(model.state_dict(), log_path.format('v20_val.pth'))
        if val_losses[-1][0] < min_v19_val_loss:
            min_v19_val_loss = val_losses[-1][0]
            torch.save(model.state_dict(), log_path.format('v19_val.pth'))
        val_losses[-1] += [min_v21_val_loss, min_v20_val_loss, min_v19_val_loss]
        par = names + ['v21_min', 'v20_min', 'v19_min']
        for i in range(len(par)):
            log_writer.add_scalar(f'Val_{par[i]}', val_losses[-1][i], epoch)
        print(f'Val: {[(par[i], np.round(val_losses[-1][i], decimals=3)) for i in range(len(par))]}')
        if epoch % 50 == 0:
            test_loss = 0.
            for data in test_loader:
                with torch.no_grad():
                    with torch.autocast(device_type='cuda', dtype=torch.float32):
                        ret_list = model.forward([None, None, data.to(device)])
                    test_loss += float(ret_list[-1][0].item()) * len(data)
            if len(test_dataset) != 0:
                test_loss /= len(test_dataset)
            log_writer.add_scalar('Test', test_loss, epoch)
            print(f'Test:', np.round(test_loss, decimals=3), flush=True)
    model.load_state_dict(torch.load(log_path.format('v21_val.pth')))
    test_loss = 0.
    for data in test_loader:
        with torch.no_grad():
            with torch.autocast(device_type='cuda', dtype=torch.float32):
                ret_list = model.forward([None, None, data.to(device)])
            test_loss += float(ret_list[-1][0].item()) * len(data)
    if len(test_dataset) != 0:
        test_loss /= len(test_dataset)
    print(f'Final Test:', np.round(test_loss, decimals=3), flush=True)
    return model

def run_test_accuracy(test_ds, reg_model: GNNModel = None, class_model: GNNModel = None):
    if not reg_model and not class_model: 
        print('[WARNING] No model.')
        return
    test_loader = DataLoader(test_ds, batch_size=128, shuffle=False)
    if reg_model:
        mse = reg_model.test_accuracy(test_loader).detach().cpu().numpy()
        print('MSE =', round(float(mse), 3))
    if class_model:
        _, acc = class_model.test_accuracy(test_loader)
        acc = float(acc.detach().cpu().numpy())
        acc /= len(test_ds)
        print('Acc =', round(float(acc), 3))
    pass

if __name__ == '__main__':
    # transfer reg/class model, with original model and path
    parser.add_argument('--trans_reg', action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument('--trans_class', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--init_reg_path', type=str, default=None)
    parser.add_argument('--init_class_path', type=str, default=None)
    parser.add_argument('--reg_db_path', type=str, default=None)
    parser.add_argument('--class_db_path', type=str, default=None)
    parser.add_argument('--save_path', type=str, required=True)
    parser.add_argument('--test_ratio', type=float, default=None)
    parser.add_argument('--seed', type=int, default=42)
    parser.add_argument('--run_mulnet', action=argparse.BooleanOptionalAction, default=False)
    parser.add_argument('--test_accuracy', action=argparse.BooleanOptionalAction, default=False)
    FLAGS = parser.parse_known_args()[0]
    
    import warnings
    warnings.filterwarnings('ignore')
    rl_utils.seed_all(FLAGS.seed)
    
    for task, flag, db_path, init_path in zip(
        ['regression', 'class'],
        [FLAGS.trans_reg, FLAGS.trans_class], 
        [FLAGS.reg_db_path, FLAGS.class_db_path],
        [FLAGS.init_reg_path, FLAGS.init_class_path]
    ):
        if not flag: continue
        assert db_path != None
        ds = MyOwnDataset(db_path)
        ds = MyOwnDataset(data_files = ds.processed_file_names)
        ds = to_gpu(ds, FLAGS.device)
        model = dse_utils.get_model(
            False, None, FLAGS.device, task, load_parameter=False
        )
        
        if init_path != None:
            try:
                model.load_parameter(init_path)
            except:
                model.model = torch.load(init_path).to(model.device)
        n_val = int(len(ds) * FLAGS.val_ratio)
        if FLAGS.test_ratio != None: n_test = int(len(ds) * FLAGS.test_ratio)
        else: n_test = None
        if n_test == None:
            train_ds, val_ds = split_dataset(ds, FLAGS.random_seed, n_val, n_test)
            test_ds = None
        else:
            train_ds, val_ds, test_ds = split_dataset(ds, FLAGS.random_seed, n_val, n_test)
        save_suffix = ('reg.pth' if task == 'regression' else 'class.pth')
        n_epoch = 1500 if task == 'regression' else 500
        if FLAGS.run_mulnet:
            assert task == 'regression'
            parser.add_argument('--run_hybrid', action=argparse.BooleanOptionalAction, default=True)
            FLAGS = parser.parse_args()
            if FLAGS.run_hybrid:
                param = {
                    'shared_MLP': 0,
                    'arch_embed': '[D, D//2]',
                    'private_prev_hiddens': '[D//2, D//4]',
                    'private_pos_hiddens': '[D//4]'
                }
            else:
                param = {
                    'shared_MLP': 2,
                    'shared_MLP_hidden': '[D+D//2, D//2+D//4]',
                    'private_hidden_channels': '[D//4]'
                }
            v18_path = '/scratch/zijd/dse/autodse_v18/reg'
            v20_path = '/scratch/zijd/dse/autodse_v20/reg'
            ds_list = []
            for _path in [v18_path, v20_path]:
                old_ds = MyOwnDataset(_path)
                old_ds = MyOwnDataset(data_files = old_ds.processed_file_names)
                old_ds = to_gpu(old_ds, FLAGS.device)
                ds_list.append(old_ds)
            ds_list.append(train_ds)
            if test_ds == None: test_ds = []
            pretrain_exp(param, ds_list, [[],[],val_ds], test_ds, ['v18', 'v20', 'v21'], FLAGS.device, n_epoch, FLAGS.save_path+'/{}')
        elif FLAGS.test_accuracy:
            if task == 'regression': run_test_accuracy(test_ds, model, None)
            else:
                run_test_accuracy(test_ds, None, model)
        else:
            train_model(
                train_ds, val_ds, test_ds, model, n_epoch, 64, save_path=os.path.join(FLAGS.save_path, save_suffix)
            )
        to_cpu(ds)
        del ds