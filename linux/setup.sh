echo "Creating virtual environment..."
python3 -m venv venv

echo "Downloading and installing the Scipy stack..."
source ../venv/bin/activate
pip3 install -r requirements.txt

echo "Creating shortcuts on the desktop..."
 sh ./create_shortcuts.sh

echo "Complete"
