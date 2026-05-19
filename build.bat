@echo off
setlocal

cd /d "%~dp0"

echo [1/3] Installing build requirements...
py -3.8 -m pip install -r requirements-build.txt
if errorlevel 1 goto error

echo [2/3] Building EXE...
py -3.8 -m PyInstaller --clean DJI_GPX_Extractor.spec
if errorlevel 1 goto error

echo [3/3] Done.
echo Output: %CD%\dist\DJI_GPX_Extractor.exe
exit /b 0

:error
echo.
echo Build failed.
exit /b 1
