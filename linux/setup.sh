DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd DIR/..

echo "Creating virtual environment..."
python3 -m venv venv

echo "Downloading and installing the Scipy stack..."
source DIR/../venv/bin/activate
pip3 install -r requirements.txt

deactivate

# echo "Configuring ipython profile..."
# sh ./config_ipython_profile.sh

echo "Creating shortcuts on the desktop..."
sh DIR/create_shortcuts.sh

echo "Complete"
