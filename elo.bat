@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                            elo
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 2 >nul

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                            0%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal enabledelayedexpansion

set processess=processes.txt

echo. > %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq dps" /fi "services eq dps" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: DPS'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: DPS '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq Sysmain" /fi "services eq Sysmain" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: Sysmain'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: Sysmain '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq PcaSvc" /fi "services eq PcaSvc" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: PcaSvc'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: PcaSvc '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq Dusmsvc" /fi "services eq Dusmsvc" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: Dusmsvc'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: Dusmsvc '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq Eventlog" /fi "services eq Eventlog" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: Eventlog'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: Eventlog '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq Appinfo" /fi "services eq Appinfo" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: Appinfo'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: Appinfo '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "tokens=2" %%a in ('tasklist /svc /fi "services eq DcomLaunch" /fi "services eq DcomLaunch" ^| findstr /i "svchost.exe"') do set pid=%%a

if not defined pid (
    powershell -Command "$result = 'Process Not Running: BAM'; Write-Host $result" >> %processess%
) else (
    powershell -Command "$process = Get-Process | Where-Object {$_.Id -eq %pid%}; if ($process) { $result = 'Process Name: BAM '; Write-Host $result; $result = ' Start Time: ' + $process.StartTime; Write-Host $result}" >> %processess%
)

echo. >> %processess%

for /f "delims=" %%a in ('wmic os get lastbootuptime ^| find "."') do set "bootTime=%%a"
echo System Boot Time: %bootTime:~0,4%/%bootTime:~4,2%/%bootTime:~6,2% %bootTime:~8,2%:%bootTime:~10,2%:%bootTime:~12,2% >> %processess%

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                           20%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal enabledelayedexpansion

set eventlogss=%~dp0EventLogs

if exist "%eventlogss%" rmdir /s /q "%eventlogss%"

mkdir "%eventlogss%"

wevtutil qe "Windows Powershell" /q:"*[System[(EventID=800)]]" /f:text /c:1 /rd:true > %eventlogss%\PowerShellExecutionDetails.txt
wevtutil qe Application /q:"*[System/EventID=3079]" /f:text /c:1 /rd:true /e:root > %eventlogss%\JournalDeletion.txt
wevtutil qe Security /q:"*[System/EventID=1102]" /f:text /c:1 /rd:true /e:root > %eventlogss%\EvLogCleared.txt
wevtutil qe Security /q:"*[System/EventID=1100]" /f:text /c:1 /rd:true /e:root > %eventlogss%\EvLogStopped.txt
wevtutil qe Security /q:"*[System/EventID=1104]" /f:text /c:1 /rd:true /e:root > %eventlogss%\EvLogMax.txt
wevtutil qe Security /q:"*[System/EventID=4616]" /f:text /c:1 /rd:true /e:root > %eventlogss%\TimeChanger.txt
wevtutil qe Security /q:"*[System/EventID=4672]" /f:text /c:1 /rd:true /e:root > %eventlogss%\AdminNewUser.txt
wevtutil qe Security /q:"*[System/EventID=4624]" /f:text /c:1 /rd:true /e:root > %eventlogss%\UserLogin.txt
wevtutil qe Security /q:"*[System/EventID=4647]" /f:text /c:1 /rd:true /e:root > %eventlogss%\UserLogout.txt
wevtutil qe Security /q:"*[System/EventID=4688]" /f:text /c:1 /rd:true /e:root > %eventlogss%\NewProcessCreated.txt
wevtutil qe Security /q:"*[System/EventID=4689]" /f:text /c:1 /rd:true /e:root > %eventlogss%\ProcessTerminated.txt
wevtutil qe Security /q:"*[System/EventID=4697]" /f:text /c:1 /rd:true /e:root > %eventlogss%\ServiceInstalled.txt
wevtutil qe Security /q:"*[System/EventID=6416]" /f:text /c:1 /rd:true /e:root > %eventlogss%\ExternalDevice.txt
wevtutil qe Security /q:"*[System/EventID=6420]" /f:text /c:1 /rd:true /e:root > %eventlogss%\DriverDisabled.txt
wevtutil qe Security /q:"*[System/EventID=4799]" /f:text /c:1 /rd:true /e:root > %eventlogss%\ShadowCopiesDeleted.txt
wevtutil qe Security /q:"*[System/EventID=4798]" /f:text /c:1 /rd:true /e:root > %eventlogss%\RegPermsChanged.txt
wevtutil qe System /q:"*[System/EventID=7045]" /f:text /rd:true /e:root > %eventlogss%\NSSMCreation.txt

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                           40%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || ( echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal enabledelayedexpansion

set roamingstatess=RoamingStates.txt

echo. > %roamingstatess%

set "dir=%localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState"

set "found=0"

if exist "%dir%" (
    for /D %%A in ("%dir%\*") do (
        echo Detected: %%~nxA
        set "found=1"
    ) >> %roamingstatess%
) else (
    echo RoamingState Doesn't Exist
) >> %roamingstatess%

if !found! equ 0 (
    echo Nothing Found
) >> %roamingstatess%

endlocal

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                           60%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || ( echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal enabledelayedexpansion

set batchss=Batch.txt

echo. > %batchss%

set "foundFlag=0"
set "foundFlag2=0"

set "prefetchfolder=C:\Windows\Prefetch"
set "tf1=CMD.EXE"
set "tf2=NOTEPAD.EXE"

for %%F in ("%prefetchfolder%\%tf1%-*.pf") do (
    findstr /i /c:".bat" "%%F" > nul
    if "%ERRORLEVEL%"=="0" (
        echo Batch Files Detected In %%~nxF
        set "foundFlag=1"
    )
) >> %batchss%

if !foundFlag! equ 0 (
    echo No Batch Files Found or Prefetch Deleted
) >> %batchss%

for %%F in ("%prefetchfolder%\%tf2%-*.pf") do (
    findstr /i /c:".bat" "%%F" > nul
    if "%ERRORLEVEL%"=="1" (
        echo Batch Files Detected In %%~nxF
        set "foundFlag2=1"
    )
) >> %batchss%

if !foundFlag2! equ 0 (
    echo No Batch Files Found or Prefetch Deleted
) >> %batchss%

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                           80%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || ( echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal enabledelayedexpansion

set macross=Macros.txt

echo. > %macross%

set "localAppData=%LOCALAPPDATA%"
set "appData=%APPDATA%"
set "programFilesX86=%PROGRAMFILES(X86)%"
set "programFiles=%PROGRAMFILES%"

set "Logitech=%localAppData%\LGHUB\settings.db"
set "Glorious=C:\Users\%username%\AppData\Local\BY-COMBO2\mac"
set "Glorious1=C:\ProgramData\Glorious Core\userdata\guru\data\MacroDB.db" //
set "Glorious2=C:\ProgramData\Glorious Core\userdata\guru\data\DevicesDB.db" // 
set "corsair=%appData%\corsair\CUE\config.cuecfg"
set "bloody=%programFilesX86%\Bloody7\Bloody7\UserLog\Mouse\TLcir_9EFF3FF4\language\Settings\EnvironmentVar.ini"
set "steel=%appData%\steelseries-engine-3-client\Session Storage\000003.log"
set "Alienware=%ALLUSERSPROFILE%\Alienware\AlienWare Command Center\fxmetadata\.json"
set "Motospeed=%programFiles%\Gaming MouseV30\record.ini"
set "Marsgaming=%programFilesX86%\Gaming Mouse\Config.ini"
set "Marsgaming2=%localAppData%\BY-8801-GM917-v108\curid.dtc"
set "Ayax=%programFiles%\AYAX GamingMouse\config.bin"
set "T2=%localAppData%\BY-COMBO\pro.dtc"
set "Xenon200=%programFilesX86%\Xenon200\Configs"
set "Reddragon=%appData%\REDRAGON\GamingMouse\config.ini"
set "Reddragon2=%appData%\REDRAGON\GamingMouse\macro.ini"
set "Reddragon3=%appData%\REDRAGON\GamingMouse\Macro"
set "Blackweb=C:\Blackweb Gaming AP\config"
set "Razer1=%PROGRAMDATA%\Razer\Razer Central\Accounts"
set "Razer2=%LOCALAPPDATA%\Razer\Synapse3\Settings" 
set "Razer3=C:\ProgramData\Razer\Synapse3\Log"
set "Razer4=%localAppData%\Razer\Synapse\log\macros\MacrosRazer3.txt" 
set "RazerT=C:\ProgramData\Razer\Synapse3\Log\SynapseService.log" 
set "Roccat=C:\Users\%username%\AppData\Roaming\ROCCAT\SWARM\macro\macro_list.dat" 
set "Roccat2=C:\Users\%username%\AppData\Roaming\ROCCAT\SWARM\macro\custom_macro_list.dat" 
set "Roccat3=C:\Users\%username%\AppData\Roaming\ROCCAT\SWARM\macro\macro_list.dat" 
set "General1=C:\users\%username%\appdata\BYCOMBO2\mac\*mcf" 
set "KromKolt=C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config\sequence.dat" 
set "Asus=C:\users\%username%\documents\ASUS\ROG\ROG Armoury\common\macro\*.GMAC" 
set "Fantech=C:\Program Files (x86)\FANTECH VX7 Gaming Mouse\config.ini" 
set "T16=%LOCALAPPDATA%\BY-COMBO\curid.dct" 
set "T161=%LOCALAPPDATA%\BY-COMBO\pro.dct" 
set "LIX=C:\Program Files (x86)\SPC Gear" 
set "Marvo=%localAppData%\BY-8801-GM917-v108\curid.dct" 
set "Marvo2=%localAppData%\BY-8801-GM917-v108\pro.dct" 
set "ReDragon=C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse\config.ini" 
set "ReDragon2=C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse\macro.ini"
set "ReDragon3=C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse" 
set "ReDragonM7=C:\Users%USERNAME%\Documents\M711\*.MacroDB"
set "kolke=C:\Program Files (x86)\Driver Nombredemouse\INI_CN\*.dat"
set "kolke2=C:\Program Files (x86)\Driver Nombredemouse\INI_EN\*.dat"
set "Aukey=%localappdata%\JM01"

if exist "%Aukey%" (
    for %%A in ("%Aukey%") do ( 
        echo %d%Aukey Mouse Detected, Modified At: %%~tA
    )
) >> %macross%



if exist "%kolke%" (
    for %%A in ("%kolke%") do (
        echo %d%Kolke Mouse Detected, Modified At: %%~tA
    )
) >> %macross%



if exist "%kolke2%" (
    for %%A in ("%kolke2%") do (
        echo %d%Kolke Mouse Detected, Modified At: %%~tA
    )
) >> %macross%



if exist "%Roccat%" (
    for %%A in ("%Roccat%") do (
        echo %d%Roccat Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%



if exist "%Roccat2%" (
    for %%A in ("%Roccat2%") do (
        echo %d%Roccat Detected, Modified At: %%~tA
    ) 
) >> %macross%



if exist "%Roccat3%" (
    for %%A in ("%Roccat3%") do (
        echo %d%Roccat Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%General1%" (
    for %%A in ("%General1%") do (
        echo %d%Glorious, Ajazz, AVF, Yanpol or uRage Macro Detected, Modified At: %%~tA
    ) 
) >> %macross%


if exist "%KromKolt%" (
    for %%A in ("%KromKolt%") do (
        echo %d%KromKolt Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%


if exist "%Asus%" (
    for %%A in ("%Asus%") do (
        echo %d%Asus Macro Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%Fantech%" (
    for %%A in ("%Fantech%") do (
        echo %d%Fantech Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%T161%" (
    for %%A in ("%T161%") do (
        echo %d%T16 Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%




if exist "%T16%" (
    for %%A in ("%T16%") do (
        echo %d%T16 Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%


if exist "%LIX%" (
    for %%A in ("%LIX%") do (
        echo %d%Lix Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%



if exist "%Marvo%" (
    for %%A in ("%Marvo%") do (
        echo %d%Marvo Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%



if exist "%Marvo2%" (
    for %%A in ("%Marvo2%") do (
        echo %d%Marvo Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%


if exist "%ReDragon%" (
    for %%A in ("%ReDragon%") do (
        echo %d%ReDragon Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%




if exist "%ReDragon2%" (
    for %%A in ("%ReDragon2%") do (
        echo %d%ReDragon Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%


if exist "%ReDragon3%" (
    for %%A in ("%ReDragon3%") do (
        echo %d%ReDragon Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%ReDragonM7%" (
    for %%A in ("%ReDragonM7%") do (
        echo %d%ReDragon M711 Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%



findstr /C:"turbo: true" "%RazerT%" 2>nul
if %errorlevel% equ 0 (
    echo Razer Turbo Mode Is Activated
) >> %macross%

findstr /C:"MacroClient:Delete" "%Razer4%" 2>nul
if %errorlevel% equ 0 (
    echo Detected a Deleted Razer Macro
) >> %macross%

if exist "%Razer1%" (
    for %%A in ("%Razer1%") do (
        echo %d%Razer Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%Razer2%" (
    for %%A in ("%Razer2%") do (
        echo %d%Razer Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%Razer3%" (
    for %%A in ("%Razer3%") do (
        echo %d%Razer Mouse Detected, Modified At: %%~tA
    ) 
) >> %macross%

if exist "%Logitech%" (
    for %%A in ("%Logitech%") do (
        echo %d%Logitech Mouse Detected, Modified At: %%~tA
    )
    
) >> %macross%

if exist "%Glorious%" (
    for %%A in ("%Glorious%") do (
        echo Glorious Mouse Detected, Modified At: %%~tA
         )
    ) >> %macross%

if exist "%corsair%" (
    for %%A in ("%Glorious%") do (
    echo Corsair Mouse Detected, Modified At: %%~tA
     )
) >> %macross%

if exist "%bloody%" (
    for %%A in ("%bloody%") do (
        echo Bloody Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%steel%" (
    for %%A in ("%bloody%") do (
        echo SteelSeries Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Alienware%" (
    for %%A in ("%Alienware%") do (
        echo Alienware Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Motospeed%" (
    for %%A in ("%Motospeed%") do (
        echo Motospeed Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Marsgaming%" (
    for %%A in ("%Marsgaming%") do (
        echo Marsgaming Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Marsgaming2%" (
    for %%A in ("%Marsgaming2%") do (
        echo Marsgaming Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Ayax%" (
 for %%A in ("%Ayax%") do (
        echo Ayax Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%T2%" (
 for %%A in ("%T2%") do (
        echo T2 Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Xenon200%" (
    for %%A in ("%Xenon200%") do (
        echo Xenon200 Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Reddragon%" (
    for %%A in ("%Reddragon%") do (
        echo RedDragon Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Reddragon2%" (
    for %%A in ("%Reddragon2%") do (
        echo RedDragon Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Reddragon3%" (
    for %%A in ("%Reddragon3%") do (
        echo RedDragon Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

if exist "%Blackweb%" (
     for %%A in ("%Blackweb%") do (
        echo Blackweb Mouse Detected, Modified At: %%~tA
    )
) >> %macross%

@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || ( echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
setlocal

set crashss=CrashDumps.txt

echo. > %crashss%

set "crashDumpsDir=%localAppData%\CrashDumps"

if not exist "%crashDumpsDir%" (
    echo CrashDumps Don't Exist
) >> %crashss%

set "filesCrash=0"

for %%F in ("%crashDumpsDir%\*") do (
    echo %%~nxF
    set "filesCrash=1"
) >> %crashss%

if %filesCrash% equ 0 (
    echo CrashDumps Were Cleared
) >> %crashss%

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                          100%%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul

cls

@echo off
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                          Done
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 2 >nul

start "" "SSELO.bat"
exit
