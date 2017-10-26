echo "Creating virtual environment..."
#cd $PSScriptRoot/..

Push-Location $PSScriptRoot/../
python -m venv venv
Pop-Location

echo "Downloading and installing the Scipy stack..."

Import-Module $PSScriptRoot/../venv/Scripts/Activate.ps1

Push-Location $PSScriptRoot/../
pip install -r requirements.txt
Pop-Location

echo "Creating shortcuts on the desktop..."
Import-Module $PSScriptRoot/create_shortcuts.ps1

echo "Complete"