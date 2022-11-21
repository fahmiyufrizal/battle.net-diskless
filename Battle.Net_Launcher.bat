:: Battle.Net Launcher
:: by fahmiyufrizal@2022
:: v1.2
::
:: Silahkan ubah/kembangkan script ini
:: Tanpa menghilangkan credits!

@echo off
mklink /J "%localappdata%\Battle.Net" "LocalAppData\Battle.net"
mklink /J "%localappdata%\Blizzard Entertainment" "LocalAppData\Blizzard Entertainment"
mklink /J "%appdata%\Battle.Net" "AppData\Battle.net"
mklink /J "C:\Programdata\Battle.net" "ProgramData\Battle.net"
mklink /J "C:\Programdata\Blizzard Entertainment" "ProgramData\Blizzard Entertainment"
mklink /J "C:\Programdata\\Electronic Arts" "ProgramData\Electronic Arts"

:FORCE_FIX_OVERWATCH2_HILANGKAN_TANDA_REM_DAN_SESUAIKAN_PATH!
REM mklink /J "C:\Program Files (x86)\Overwatch 2" "ProgramFilesx86\Overwatch 2"
start "" "Battle.net.exe"
exit