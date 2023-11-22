@echo off
REM Define sets of values for different parameters
set tpr=0.60 0.70
set ad=55 60 65 70 75 80
set st=21 23 25 27 29 31 33
set count=1

REM Loop over ad values
for %%c in (%ad%) do (
    call :process_ad %%c
)

REM Exit the script
goto :eof

:process_ad
REM Loop over st values for each ad value
for %%b in (%st%) do (
    call :process_st %1 %%b
)

goto :eof

:process_st
REM Loop over tpr values for each ad and st combination
for %%a in (%tpr%) do (
    call :process_tpr %1 %2 %%a
)

goto :eof

:process_tpr
REM Extract parameters for easier reference
set t=%3
set a=%1
set s=%2
set t2=%t:~0,1%%t:~-2%

REM Check if the file exists before copying
IF EXIST "F:\data\zaka\TPR%t%\s%s%\a%a%\inst.csv" (
    echo %count% Source: F:\data\zaka\TPR%t%\s%s%\a%a%\inst.csv 
    Destination: F:\data\zaka\inst_data\t%t2%s%s%a%a%.csv
    copy "F:\data\zaka\TPR%t%\s%s%\a%a%\inst.csv" "F:\data\zaka\inst_data\t%t2%s%s%a%a%.csv"
    set /a count+=1
)

goto :eof
