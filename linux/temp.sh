#!/bin/bash -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sed -i '7s/.*/Icon=$Dir/../icons/jupyter.png/' $DIR/jupyter.desktop
sed -i '8s/.*/Exec=$Dir/run_qtconsole.sh/' $DIR/jupyter.desktop

sed -i '7s/.*/Icon=$Dir/../icons/spyder3.png/' $DIR/spyder.desktop
sed -i '8s/.*/Exec=$Dir/run_spyder.sh/' $DIR/spyder.desktop