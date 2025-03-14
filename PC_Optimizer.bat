@echo off
title Advanced PC Optimizer - Multi-Tool
color 0A
setlocal enabledelayedexpansion

:menu
cls
echo ================================================
echo        Advanced PC Optimizer Tool
echo ================================================
echo 1. Performance Boost (Optimize RAM, Disable Startup)
echo 2. System Cleanup (Remove Temp Files, Logs, Cache)
echo 3. Network Tools (Flush DNS, Check Open Ports)
echo 4. System Info (CPU, Memory, Disk)
echo 5. Power Optimization (High Performance Mode)
echo 6. Process and Task Management
echo 7. Exit
echo ================================================
set /p choice=Enter your choice: 

if "%choice%"=="1" goto performance
if "%choice%"=="2" goto cleanup
if "%choice%"=="3" goto network
if "%choice%"=="4" goto sysinfo
if "%choice%"=="5" goto power
if "%choice%"=="6" goto procman
if "%choice%"=="7" exit
goto menu

:: ================= Performance Optimization =================

:performance
cls
echo ================================================
echo         Performance Boost
echo ================================================
echo Freeing up memory...
wmic os get FreePhysicalMemory,TotalVisibleMemorySize
echo.
echo Disabling Unnecessary Startup Programs...
wmic startup get caption,command
echo Removing unnecessary startup entries...
wmic startup where "not (caption like '%%Windows%%')" delete
echo Done!
pause
goto menu

:: ================= System Cleanup =================

:cleanup
cls
echo ================================================
echo          System Cleanup
echo ================================================
echo Cleaning temporary files, logs, and Windows junk...
del /s /f /q C:\Windows\Temp\* >nul 2>&1
del /s /f /q C:\Users\%username%\AppData\Local\Temp\* >nul 2>&1
del /s /f /q C:\Windows\Prefetch\* >nul 2>&1
cleanmgr /sagerun:1
echo Cleanup completed!
pause
goto menu

:: ================= Network Optimization =================

:network
cls
echo ================================================
echo        Network Tools
echo ================================================
echo 1. Flush DNS Cache
echo 2. Check Open Ports
echo 3. Scan Active Devices
echo 4. Back to Main Menu
echo ================================================
set /p netchoice=Enter your choice: 

if "%netchoice%"=="1" goto flushdns
if "%netchoice%"=="2" goto checkports
if "%netchoice%"=="3" goto scandevices
if "%netchoice%"=="4" goto menu
goto network

:flushdns
cls
echo Flushing DNS Resolver Cache...
ipconfig /flushdns
echo DNS Cache Cleared!
pause
goto network

:checkports
cls
echo Checking open network ports...
netstat -an | findstr "LISTENING"
pause
goto network

:scandevices
cls
set /p ipbase=Enter base IP (e.g., 192.168.1.): 
echo Scanning network...
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 %ipbase%%%i | find "Reply from" && echo %ipbase%%%i is ONLINE
)
pause
goto network

:: ================= System Information =================

:sysinfo
cls
echo ================================================
echo        System Information
echo ================================================
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
wmic cpu get Name, MaxClockSpeed
wmic memorychip get Capacity
wmic logicaldisk get DeviceID, Size, FreeSpace
pause
goto menu

:: ================= Power Optimization =================

:power
cls
echo ================================================
echo        Power Optimization
echo ================================================
echo 1. Enable High Performance Mode
echo 2. Disable Sleep Mode
echo 3. Back to Main Menu
echo ================================================
set /p powerchoice=Enter your choice: 

if "%powerchoice%"=="1" goto highperf
if "%powerchoice%"=="2" goto disablesleep
if "%powerchoice%"=="3" goto menu
goto power

:highperf
cls
echo Enabling High Performance Mode...
powercfg -setactive SCHEME_MIN
echo Done!
pause
goto power

:disablesleep
cls
echo Disabling Sleep Mode...
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
echo Sleep Mode Disabled!
pause
goto power

:: ================= Process & Task Management =================

:procman
cls
echo ================================================
echo      Process & Task Management
echo ================================================
echo 1. List Running Processes
echo 2. Kill a Process
echo 3. Back to Main Menu
echo ================================================
set /p procchoice=Enter your choice: 

if "%procchoice%"=="1" goto listprocs
if "%procchoice%"=="2" goto killproc
if "%procchoice%"=="3" goto menu
goto procman

:listprocs
cls
echo Listing running processes...
tasklist || echo Error: Unable to retrieve process list.
pause
goto procman

:killproc
cls
set /p procname=Enter the process name to kill (e.g., chrome.exe): 
taskkill /IM "%procname%" /F >nul 2>&1
if %errorlevel%==0 (
   echo Successfully terminated process: %procname%
) else (
   echo Error: Process not found or access denied. Try running as Admin.
)
pause
goto procman
