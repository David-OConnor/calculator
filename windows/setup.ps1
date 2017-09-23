echo "Creating virtual environment..."
#cd $PSScriptRoot/..

Push-Location $PSScriptRoot/../
python -m venv venv
Pop-Location

# Download wheels for Scipy and Numpy+MKL from Chris Gohlke's site; pypi doesn't have a Windows Scipy
# wheel, and Chris Gohlke's Scipy wheel requires numpy+MKL, which isn't on Pypi.
echo "Downloading Numpy+MKL from Chris Gohlke's site: http://www.lfd.uci.edu/~gohlke/pythonlibs..."
#Invoke-WebRequest -Uri "http://www.lfd.uci.edu/~gohlke/pythonlibs/hkfh9m5o/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl" -OutFile $PSScriptRoot/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl

echo "Download Scipy from Chris Gohlke's site: http://www.lfd.uci.edu/~gohlke/pythonlibs..."
#Invoke-WebRequest -Uri "http://www.lfd.uci.edu/~gohlke/pythonlibs/hkfh9m5o/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl" -OutFile $PSScriptRoot/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl

echo "Downloading and installing the Scipy stack..."

Import-Module $PSScriptRoot/../venv/Scripts/Activate.ps1

# Install the wheels we downloaded
pip install numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl
pip install scipy-1.0.0b1-cp36-cp36m-win_amd64.whl

# Install the rest of the Scipy stack through pip.
Push-Location $PSScriptRoot/../
pip install -r requirements.txt
Pop-Location

# echo "Configuring ipython profile..."
# Import-Module $PSScriptRoot/config_ipython_profile.ps1

echo "Creating shortcuts on the desktop..."
Import-Module $PSScriptRoot/create_shortcuts.ps1

echo "Removing Numpy+MKL and Scipy Wheels"
rm $PSScriptRoot/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl
rm $PSScriptRoot/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl

echo "Complete"