import sys
assert (
        sys.version_info.major == 3 and sys.version_info.minor >= 11
        ), "need at least python v3.11"

import tomllib

def get_config():
    with open("./config.toml", "rb") as f:
        data = tomllib.load(f)
        return data

def process_mappings(data):
    # TODO implement
    pass

def process_append(data):
    # TODO implement
    # check that the line exists, and if not, then insert it
    pass

processors = {
        "mappings": process_mappings,
        "append": process_append
        }

cfg = get_config()

for (key, processor) in processors.items():
    if key in cfg:
        processor(cfg[key])


