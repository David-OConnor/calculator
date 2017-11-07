#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/..

echo "Creating virtual environment..."
python3 -m venv venv

echo "Downloading and installing the Scipy stack..."
source $DIR/../venv/bin/activate
pip3 install -r requirements.txt

deactivate

chmod 0744 run_qtconsole.sh
chmod 0744 run_spyder.sh 

echo "Creating shortcuts on the desktop..."
source $DIR/create_shortcuts.sh

echo "Complete"
