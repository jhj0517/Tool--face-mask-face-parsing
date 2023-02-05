@echo off

goto :activate_venv

:launch
%PYTHON% tool.py %*
pause

:activate_venv
set PYTHON="%~dp0\venv\Scripts\Python.exe"
echo venv %PYTHON%
goto :launch

:endofscript

echo.
echo Launch unsuccessful. Exiting.
pause
git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch latest_net_D.pth' --prune-empty