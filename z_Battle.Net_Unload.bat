:: Battle.Net Launcher Unloader
:: by fahmiyufrizal@2022
:: v1.2
::
:: Silahkan ubah/kembangkan script ini
:: Tanpa menghilangkan credits!

@echo off
mkdir ProgramData\Battle.Net
mkdir "ProgramData\Blizzard Entertainment"
mkdir "ProgramData\Electronic Arts"
mkdir "LocalAppData\Battle.Net"
mkdir "LocalAppData\Blizzard Entertainment"
mkdir "AppData\Battle.Net"

xcopy C:\ProgramData\Battle.Net ProgramData\Battle.Net /E /Y /C /Q
xcopy "C:\ProgramData\Blizzard Entertainment" "ProgramData\Blizzard Entertainment" /E /Y /C /Q
xcopy "C:\ProgramData\Electronic Arts" "ProgramData\Electronic Arts" /E /Y /C /Q
xcopy "%localappdata%\Battle.Net" "LocalAppData\Battle.Net" /E /Y /C /Q
xcopy "%localappdata%\Blizzard Entertainment" "LocalAppData\Blizzard Entertainment" /E /Y /C /Q
xcopy "%appdata%\Battle.Net" "AppData\Battle.Net" /E /Y /C /Q

RD /S /Q C:\ProgramData\Battle.Net
RD /S /Q "C:\ProgramData\Blizzard Entertainment"
RD /S /Q "C:\ProgramData\Electronic Arts"
RD /S /Q "%localappdata%\Battle.Net" 
RD /S /Q "%localappdata%\Blizzard Entertainment"
RD /S /Q "%appdata%\Battle.Net" 

mklink /J "%localappdata%\Battle.Net" "LocalAppData\Battle.net"
mklink /J "%localappdata%\Blizzard Entertainment" "LocalAppData\Blizzard Entertainment"
mklink /J "C:\Programdata\Battle.net" "ProgramData\Battle.net"
mklink /J "C:\Programdata\Blizzard Entertainment" "ProgramData\Blizzard Entertainment"
mklink /J "C:\Programdata\\Electronic Arts" "ProgramData\Electronic Arts"
mklink /J "%appdata%\Battle.Net" "AppData\Battle.net"

:FORCE_FIX_OVERWATCH2_HILANGKAN_TANDA_REM_DAN_SESUAIKAN_PATH!
REM mklink /J "C:\Program Files (x86)\Overwatch 2" "ProgramFilesx86\Overwatch 2"

start "" "Battle.net.exe"
pause>nul