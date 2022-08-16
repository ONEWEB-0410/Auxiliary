@echo off
title Auxiliary
:starti
cls
echo.
echo.
echo                  .'----------'.       
echo                  # .--------. #       /--------\
echo                  # ########## #      /----------\
echo                  # ########## #      #          #
echo         .--------# '--------' #------#O --===-- #-------------.
echo         #        '----.--.----'      #__________#             #
echo         #             #  #                                    #
echo         #      ------- -- -------                             #
echo         #     /--[][][][][][][]--\                            #
echo         #    /--[][][][][][][][]--\                           #
echo         #    ----------------------                           #
echo.
echo.
echo              Date is %date% - Time is %time%
echo                       Auxiliary Menu Booklet
echo.
echo.
echo 1. Page 1
echo 2. Page 2
echo 3. About/Documentation
echo 4. Close Auxiliary
echo.
echo Page Number:
choice /c 1234 /n
if errorlevel 1 set menubookchoice=mainmenu
if errorlevel 2 set menubookchoice=mainmenu2
if errorlevel 3 set menubookchoice=about
if errorlevel 4 set menubookchoice=shutdown
cls
goto %menubookchoice%

:mainmenu
set prevmenu=mainmenu
cls
echo.
echo                       Welcome to Auxiliary!
echo                     Date is %date%
echo                      Time is %time%
echo 1. View System Info
echo 2. View all netstat
echo 3. Shutdown
echo 4. Log off
echo 5. Open Command Prompt
echo 6. Open Microsoft Edge
echo 7. View all Computers On The Network
echo 8. Open Calculator
echo 9. Return back

choice /c 123456789 /n
if errorlevel 1 set p=1
if errorlevel 2 set p=2
if errorlevel 3 set p=3
if errorlevel 4 set p=4
if errorlevel 5 set p=5
if errorlevel 6 set p=6
if errorlevel 7 set p=7
if errorlevel 8 set p=8
if errorlevel 9 set p=starti
goto %p%

:mainmenu2

echo 1. File Directory Tree
echo 2. Open Settings
echo 3. Open Windows Advanced Options Menu
echo 4. Start Remote Desktop Connection (RDP)
echo 5. File renamer
echo 6. Open notepad
echo 7. Open task manager
echo 8. Open powershell
echo 9. Return Back

choice /c 123456789 /n
if errorlevel 1 set p=9
if errorlevel 2 set p=10
if errorlevel 3 set p=11
if errorlevel 4 set p=12
if errorlevel 5 set p=13
if errorlevel 6 set p=14
if errorlevel 7 set p=15
if errorlevel 8 set p=16
if errorlevel 9 set p=starti
cls
goto %p%

:shutdown
exit

:about
cls
echo Version 1.0 
echo Auxiliary is a Windows batch file multi-tool that enhances your Windows experience.
echo Available Commands:
echo (Page 1) View System Info
echo (Page 1) View all netstat
echo (Page 1) Shutdown
echo (Page 1) Log off
echo (Page 1) Open Command Prompt
echo (Page 1) Open Microsoft Edge
echo (Page 1) View all Computers On The Network
echo (Page 1) Open Calculator
echo (Page 2) File Directory Tree
echo (Page 2) Open Settings
echo (Page 2) Open Windows Advanced Options Menu
echo (Page 2) Start Remote Desktop Connection (RDP)
echo (Page 2) File renamer
echo (Page 2) Open notepad
echo (Page 2) Open task manager
echo (Page 2) Open powershell
echo (Page 2) Return Back
pause
cls 
goto starti

:1
set prevmenu=1
cls
systeminfo
pause
goto mainmenu

:2 
set prevmenu=2
cls 
netstat
pause 
goto mainmenu

:3
shutdown /s /f /t 0

:4 
SHUTDOWN /l
exit

:5
start
pause
goto mainmenu

:6
start microsoft-edge:
pause
goto mainmenu

:7 
arp -a
pause
goto mainmenu

:8 
start "" "C:\Windows\system32\calc.exe"
pause
goto mainmenu

:9
cls
tree /f /a
pause
cls
goto mainmenu2

:10
start control /name Microsoft.System
pause
goto mainmenu2

:11
cls
shutdown.exe /r /o
pause
goto mainmenu2

:12
MSTSC
goto mainmenu2

:13
cls
echo.
echo Enter the file path of the file you want to rename, please include the file and the proper file extension.
set /p "filerenamerpath=> "
echo.
echo Enter the name you want to rename the file to.
set /p "filerenameinput=> "
ren "%filerenamerpath%" %filerenameinput%
cls
echo.
echo File renamed! Returning to the main menu.
pause
cls
goto mainmenu2

:14
start notepad.exe
pause
goto mainmenu2

:15
start taskmgr.exe
pause
goto mainmenu2

:16
start powershell.exe
pause
goto mainmenu2

pause