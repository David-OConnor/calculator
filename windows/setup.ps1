Push-Location $PSScriptRoot/../

pyflow install
Pop-Location

echo "Creating shortcuts on the desktop..."
Import-Module $PSScriptRoot/create_shortcuts.ps1

echo "Complete"
