@echo off
SET MyUrl=http://localhost:4200 >nul


start /b cmd /c "backEnd.bat" > nul
start /b cmd /c "frontEnd.bat"

:loop
find "Compiled successfully" npmOut.txt >nul
if not errorlevel 1 (
    echo Don't Close This Window
    echo Server is running
    echo To end close the window
    goto :end
)
timeout /t 1 /nobreak > nul
goto loop
:end

start %MyUrl% > nul