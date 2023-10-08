def get_nested_value(d, key):
    keys = key.split("/")
    for k in keys:
        if k in d:
            d = d[k]
        else:
            return None
    return d
