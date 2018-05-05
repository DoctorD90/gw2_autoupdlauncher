@ECHO OFF
CLS

REM ###### HOW-TO SETUP ######
REM Edit next lines according to your installation path.
REM ###### FAST WAY ######
REM Right-click on the shortcut icon.
REM Choose 'Properties' from the context menu.
REM The 'Shortcut' tab should be displayed by default, otherwise select it.
REM Copy 'Target' field content.
REM Paste in the right variable below path and executable file name.
REM ###### TIP ######
REM Default Path for 64bit system pre-configured.
REM Do not edit if it is the same.
REM %ProgramFiles% = C:\Program Files
REM %UserProfile% = C:\Users\-YourAccountName-
REM %UserProfile%\Desktop = C:\Users\-YourAccountName-\Desktop

REM ###### ArcDps Upd Client ######
REM Autostart: 0 Disabled - 1 Enabled
SET ARCstart=1
SET ARCpath=%UserProfile%\Desktop
SET ARCexe=arcdps_upd.ps1

REM ###### Teamspeak 3 Client ######
REM Autostart: 0 Disabled - 1 Enabled
SET TSstart=0
SET TSpath=%ProgramFiles%\TeamSpeak 3 Client
SET TSexe=ts3client_win64.exe

REM ###### Guild Wars 2 ######
REM Autostart: 0 Disabled - 1 Enabled
SET GW2start=1
SET GW2path=%ProgramFiles%\Guild Wars 2
SET GW2exe=Gw2-64.exe

REM ###### Taco ######
REM Autostart: 0 Disabled - 1 Enabled
SET TACOstart=1
SET TACOpath=%UserProfile%\Desktop\Taco
SET TACOexe=GW2TacO.exe

REM ###### DO NOT EDIT BELOW THIS LINE ######
REM ###### DO NOT EDIT BELOW THIS LINE ######
REM ###### DO NOT EDIT BELOW THIS LINE ######
REM ###### DO NOT EDIT BELOW THIS LINE ######
REM ###### DO NOT EDIT BELOW THIS LINE ######
REM ###### DO NOT EDIT BELOW THIS LINE ######

CD %ARCpath%
IF %ARCstart% == 1 powershell -executionpolicy bypass -File %ARCexe%

CD %TSpath%
IF %TSstart% == 1 start %TSexe%

CD %GW2path%
IF %GW2start% == 1 start %GW2exe% -maploadinfo

CD %TACOpath%
IF %TACOstart% == 1 start %TACOexe%
