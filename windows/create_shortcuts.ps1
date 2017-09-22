$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home/Desktop/Jupyter qtconsole.lnk")
$ScriptLocation = "$PSScriptRoot/run_qtconsole.ps1"
$Shortcut.TargetPath = "powershell.exe"
$Shortcut.Arguments = "-WindowStyle Hidden -command $ScriptLocation"
$Shortcut.WorkingDirectory = "$PSScriptRoot/../"
$ShortCut.IconLocation = "$PSScriptRoot/../icons/jupyter.ico"
$ShortCut.Description = "Jupyter qtconsole"
$Shortcut.Save()

echo "($get-item $scriptPath ).parent/icons/spyder.ico"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home/Desktop/Spyder.lnk")
$ScriptLocation = "$PSScriptRoot/run_spyder.ps1"
$Shortcut.TargetPath = "powershell.exe"
$Shortcut.Arguments = "-WindowStyle Hidden -command $ScriptLocation"
$Shortcut.WorkingDirectory = "$PSScriptRoot/../"
$ShortCut.IconLocation = "$PSScriptRoot/../icons/spyder.ico"
$ShortCut.Description = "Spyder"
$Shortcut.Save()

