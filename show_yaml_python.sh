#!/bin/bash
set -e

# Command to read `test.yaml` and convert to `.json` file
python3 -c 'import yaml,pprint;pprint.pprint(yaml.load(open("test.yaml").read(), Loader=yaml.FullLoader))'

exec "$@"
