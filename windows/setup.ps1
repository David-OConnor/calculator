echo "Making sure Pipenv is installed..."
pip install --user pipenv

Push-Location $PSScriptRoot/../

echo "Creating virtual environment with Pipenv..."
pipenv --three

echo "Downloading and installing the Scipy stack..."
pipenv install
Pop-Location

echo "Creating shortcuts on the desktop..."
Import-Module $PSScriptRoot/create_shortcuts.ps1

echo "Complete"