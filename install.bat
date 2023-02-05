@echo off

call "%~dp0\venv\Scripts\activate.bat"
echo venv activated.

pip install -r requirements.txt

echo.
echo Requirements installed successfully.
pause

