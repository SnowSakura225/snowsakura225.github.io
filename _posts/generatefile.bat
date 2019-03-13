@echo off
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set "date=%year%-%month%-%day%-"
set /P title=Enter Title: 
set "titlenospace=%title: =%"
set filename=%date%%titlenospace%

cls
echo Title: %title%
echo --->> %filename%.md
echo layout: post>> %filename%.md
echo title: %title%>> %filename%.md
echo --->> %filename%.md
echo File Generated
pause