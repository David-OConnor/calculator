#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/..

pyflow run ipython qtconsole --config="../jupyter_qtconsole_config.py"
