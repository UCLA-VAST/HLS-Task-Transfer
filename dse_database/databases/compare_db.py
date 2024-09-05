from urllib.parse import urlparse
import argparse
import redis
import sys
from multiprocessing import Pool
import signal
import pickle

def parse_redis_url(s):
    url = urlparse(s)
    if not url.scheme:
        s = 'redis://' + s
        url = urlparse(s)
    if url.scheme != 'redis':
        print('Invalid scheme %s for %s'%(url.scheme,s))
        return None
    try:
        db = int(url.path)
    except ValueError:
        db = 0        
    return (url.hostname, url.port or 6379, url.password, db)
    
def compare_string(src, dst, key):
    if src.get(key) != dst.get(key):
        return False
    return True        

def compare_hash(src, dst, key):
    h1 = src.hgetall(key)
    h2 = dst.hgetall(key)
    if set(h1) != set(h2):
        return False
        
    for k,v in h1.iteritems():
        if h2[k] != v:
            return False
    return True            

def compare_list(src, dst, key):
    if src.lrange(key, 0, -1) != dst.lrange(key, 0, -1):
        return False
    return True            

def compare_set(src, dst, key):
    if src.smembers(key) != dst.smembers(key):
        return False
    return True            

def compare_zset(src, dst, key):
    if src.zrange(key, 0, -1, withscores = True) != dst.zrange(key, 0, -1, withscores = True):
        return False
    return True
    
def compare(key):
    try:
        res = cmp_funcs[src.type(key)](src, dst, key)
        if not res:
            print("key '%s' differs"%key)
        return res
    except redis.ResponseError as e:
        print("Error '%s' when comparing key: '%s', skipping"%(e, key))
        return True

def init_worker():
    signal.signal(signal.SIGINT, signal.SIG_IGN)
    
if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description='Redis diff tool.')
    argparser.add_argument('--src', required='True')
    argparser.add_argument('--dst', required='True')
    
    args = argparser.parse_args()
    
    #host,port,password,db = parse_redis_url(args.src)
    src = redis.Redis(host = 'localhost', port = 6379, db = 0)
    #host,port,password,db = parse_redis_url(args.dst)
    dst = redis.Redis(host = 'localhost', port = 6380, db = 1)
    
    # open a sample database
    f_db_src = open(args.src, "rb")
    data = pickle.load(f_db_src)
    src.hmset(0, data)
    
    f_db_dst = open(args.dst, "rb")
    data = pickle.load(f_db_dst)
    dst.hmset(1, data)

    
    
    keys_src = [k.decode('utf-8') for k in src.hkeys(0)]
    keys_dst = [k.decode('utf-8') for k in dst.hkeys(1)]
    print(len(keys_src), len(keys_dst))
    
    diff = 0
    diff_lv2 = 0
    for i in range(len(keys_dst)):
      if ("lv1" in keys_dst[i] or "lv2" in keys_dst[i]) and src.hexists(0, keys_dst[i]):
        diff += 1
        if "lv2" in keys_dst[i]:
          diff_lv2 += 1
        
    print("total diff", diff, "lv2 diff", diff_lv2)
    