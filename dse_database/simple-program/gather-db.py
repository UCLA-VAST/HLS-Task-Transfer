from email.mime import base
import shutil
from os.path import join, abspath, dirname

base_path = '/expr/simple-example'
copy_base_path = join(dirname(abspath(__file__)), 'database/reduction')
size = [256, 512, 1024, 2048]

for s in size:
    # print(join(base_path, f'dot-product-{s}', 'reduction', 'result.db'), 'to',
    #                 join(copy_base_path, f'dot-double-{s}_result.db'))
    # shutil.copyfile(join(base_path, f'dot-product-{s}', 'reduction', 'result.db'), 
    #                 join(copy_base_path, f'dot-double-{s}_result.db'))
    
    shutil.copyfile(join(base_path, f'float-dot-{s}', 'reduction', 'result.db'), 
                    join(copy_base_path, f'dot-float-{s}_result.db'))

