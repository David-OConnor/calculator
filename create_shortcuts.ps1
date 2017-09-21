$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home/Desktop/Jupyter qtconsole.lnk")
$ScriptLocation = "$PSScriptRoot/run_qtconsole.ps1"
$Shortcut.TargetPath = "powershell.exe"
$Shortcut.Arguments = "-WindowStyle Hidden -command $ScriptLocation"
$Shortcut.WorkingDirectory = "$PSScriptRoot/"
$ShortCut.IconLocation = "$PSScriptRoot/jupyter.ico"
$ShortCut.Description = "Jupyter qtconsole"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home/Desktop/Spyder.lnk")
$ScriptLocation = "$PSScriptRoot/run_spyder.ps1"
$Shortcut.TargetPath = "powershell.exe"
$Shortcut.Arguments = "-WindowStyle Hidden -command $ScriptLocation"
$Shortcut.WorkingDirectory = "$PSScriptRoot/"
$ShortCut.IconLocation = "$PSScriptRoot/spyder.ico"
$ShortCut.Description = "Spyder"
$Shortcut.Save()

