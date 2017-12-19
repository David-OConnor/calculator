#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/..

pipenv run jupyter qtconsole --config="../jupyter_qtconsole_config.py"