@echo off

set "extraopts=w"
if "%1"=="-d" set "extraopts= --debug"


echo Running: pyinstaller peertalk/__main__.py --specpath peertable.build/spec -F%extraopts% -i Peertalk.ico
pyinstaller peertalk/__main__.py --specpath peertable.build/spec -F%extraopts% -i Peertalk.ico && move dist\__main__.exe .\Peertalk.exe >nul && echo. && echo.Built successfully!