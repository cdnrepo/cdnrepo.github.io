@echo off
ipconfig /flushdns
netsh advfirewall reset
netsh winsock reset catalog
netsh int ip reset reset.log hit
route delete 14.225.202.108

cls
type "%systemroot%\system32\drivers\etc\hosts" | find "127.0.0.1 nb.jack52088.com" > nul
IF %ERRORLEVEL% NEQ 0 SET RESULT=%ERRORLEVEL%
IF %ERRORLEVEL% EQU 1 SET RESULT=%ERRORLEVEL%
IF %ERRORLEVEL% EQU 0 SET RESULT=%ERRORLEVEL%

rem @echo RESULT = %RESULT%

if %RESULT% == 0 goto end 
if %RESULT% == 1 goto addhosts

:end
echo Hosts file is ok.
echo Ban da thuc hien thanh cong chinh sua file hosts roi.
echo Nhan phim bat ky de ket thuc.
echo Moi thac mac xin lien he facebook ho tro online.
pause
exit

:addhosts

echo 127.0.0.1 hi.baidu.com >> "%systemroot%\system32\drivers\etc\hosts"
echo 0.0.0.0 xz.jack52088.com >> "%systemroot%\system32\drivers\etc\hosts"
echo 127.0.0.1 nb.jack52088.com >> "%systemroot%\system32\drivers\etc\hosts"
echo 127.0.0.1 hi.n.shifen.com  >> "%systemroot%\system32\drivers\etc\hosts"

RD /S /Q "%WinDir%\System32\GroupPolicyUsers"
RD /S /Q "%WinDir%\System32\GroupPolicy"

echo Host file was edited OK!
echo Ban da thuc hien thanh cong chinh sua file hosts!
echo Nhan phim bat ky de ket thuc.
echo Moi thac mac xin lien he facebook ho tro online.
pause
exit
:error
echo There some errors when runing script!
echo Co loi khi thuc hien script!
echo Nhan phim bat ky de ket thuc.
echo Moi thac mac xin lien he facebook ho tro online.
pause
exit