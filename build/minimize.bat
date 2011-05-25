@echo off

echo Initializing
setlocal
pushd
cd %~dp0
set PATH=%windir%/Microsoft.NET/Framework/v4.0.30319;%PATH%

echo Compiling
csc /nologo /out:minimize.exe /target:exe /debug- minimize.cs

echo Minimizing
echo ~~~~~~~~~~
call minimize.exe ../dist/json2.min.js "" ../json2.js
echo ~~~~~~~~~~

echo Cleaning up
del minimize.exe
del ..\dist\*.orig.js
popd
endlocal
pause
