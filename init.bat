@echo off
cd FrontEnd
echo Don't close until "Close Now" has appeared or Window is closed
echo Processing
npm i > nul
npm i @angular/cli@14.0.6 >nul
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
echo Close Now