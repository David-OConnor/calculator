echo "Creating virtual environment..."
python -m venv venv

echo "Downloading Numpy+MKL from Chris Gohlke's site: http://www.lfd.uci.edu/~gohlke/pythonlibs..."
#Invoke-WebRequest -Uri "http://www.lfd.uci.edu/~gohlke/pythonlibs/hkfh9m5o/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl" -OutFile $PSScriptRoot/numpy+mkl.whl

echo "Download Scipy from Chris Gohlke's site: http://www.lfd.uci.edu/~gohlke/pythonlibs..."
#Invoke-WebRequest -Uri "http://www.lfd.uci.edu/~gohlke/pythonlibs/hkfh9m5o/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl" -OutFile $PSScriptRoot/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl

echo "Downloading and installing the Scipy stack..."
Import-Module $PSScriptRoot/venv/Scripts/Activate.ps1
pip install numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl
pip install scipy-1.0.0b1-cp36-cp36m-win_amd64.whl
pip install -r requirements.txt

echo "Creating shortcut on the desktop..."
Import-Module $PSScriptRoot/create_shortcuts.ps1

echo "Complete"