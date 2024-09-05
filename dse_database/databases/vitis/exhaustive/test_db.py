import redis
import pickle
def get_db_object(db_path):
    # create a redis database
    database = redis.StrictRedis(host='localhost', port=6379)
    database.flushdb()
    # open a sample database
    f_db = open(db_path, "rb")
    # load the database and get the keys
    # the key for each entry shows the value of each of the pragmas in the source file
    data = pickle.load(f_db)
    database.hmset(0, data)
    keys = [k.decode('utf-8') for k in database.hkeys(0)]
    # get a value of a specific key (key i)
    # i = 6
    zero_count = 0
    nonzero_count = 0
    perf_numbers = []
    for i in range(len(keys)):
        pickle_obj = database.hget(0, keys[i])
        obj = pickle.loads(pickle_obj)
        if "lv2" in keys[i]:# and obj.perf != 67855.0 and obj.perf != 804914.0:
            # print(i)
            try:
                if (obj.perf not in perf_numbers):
                    print(obj.perf, end = " ")
                    perf_numbers.append(obj.perf)
                if obj.perf == 0:
                    zero_count += 1
                else:
                    nonzero_count += 1
            except:
                # print()
                pass
    print()
    f_db.close()
    # print('zero_count', zero_count, 'nonzero_count', nonzero_count)
    return obj
if __name__ == '__main__':
    path = "./sobel_result.db"
    # path = "./all_dbs/addweighted_result.db"
    import os
    for entry in os.scandir("./"):
        if entry.path.endswith(".db"): 
            print(entry.path)
            obj = get_db_object(entry.path)
