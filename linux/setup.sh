#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR
pyflow install

cd linux

chmod 0744 run_qtconsole.sh
chmod 0744 run_spyder.sh 

echo "Creating shortcuts on the desktop..."
source $DIR/create_shortcuts.sh

echo "Complete"
