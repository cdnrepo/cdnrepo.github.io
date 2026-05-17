@echo off
cd /d "%~dp0"
:loop
set /p input=^>
python %input%
goto loop