#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/../venv/bin/activate
cd $DIR/..

jupyter qtconsole --config="../jupyter_qtconsole_config.py"