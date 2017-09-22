This package is used to setup  a virtual environment 
for running mathy scripts in a jupyter qtconsole or spyder IDE. The intent
is to provide a quick setup for these tools, for a calcultor-like setting.

It creates a virtual environment, downloads the Scipy stack, Qt, and Spyder,
and creates shortcuts that run the Jupyter qtconsole or Spyder inside this environment.

Only compatible with Python versions greater than 3.3. 'python' and 'pip'
must be exposed to your system path. ('python3' and 'pip3' if using Linux.)

Special thanks to Chris Gohlke, for maintaining the working Scipy wheel downloaded
by this script: PyPi (CAO Sept 2017) doesn't have one.


Installation instructions for Windows:
--------------------------------------
-Download or clone the repo. 
-Run the powershell script setup.ps1 under the windows subdirectory.
(You can run it by right clicking, and selecting 'Run with Powershell'. )

-You should now have shortcuts on your desktop for Jupyter qtconsole and Spyder, 
inside their own venv with the Scipy stack. Place these anywhere you'd like.
If you'd like to regenerate the shortcuts later or if you change the virtual env's
directory, run create_shortcuts.ps1.


Installation instructions for Linux:
--------------------------------------
-In progress
