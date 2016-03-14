#!/bin/bash
VENV=$1
if [ -z $VENV ]; then
    echo "usage: mymongo.sh [virtualenv_path] CMDS"
    exit 1
fi
source ${VENV}/bin/activate
shift 1
exec "$@"