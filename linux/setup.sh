#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Making sure Pipenv is installed..."
pip3 install --user pipenv

cd $DIR/..

echo "Creating virtual environment with Pipenv..."
pipenv --three

echo "Downloading and installing the Scipy stack..."
pipenv install

cd linux

chmod 0744 run_qtconsole.sh
chmod 0744 run_spyder.sh 

echo "Creating shortcuts on the desktop..."
source $DIR/create_shortcuts.sh

echo "Complete"
