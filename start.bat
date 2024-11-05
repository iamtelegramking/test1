@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user nike Nike@1920_Admin@1 /add >nul
net localgroup administrators nike /add >nul
net user nike /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant nike:F >nul
ICACLS C:\Windows\installer /grant nike:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
echo Username: nike
echo Password: Nike@1920_Admin@1
echo You can login now
ping -n 10 127.0.0.1 >nul
echo RDP CREATION SUCCESSFULL!
:check
ping 127.0.0.1 > null
cls
echo RDP CREATION SUCCESSFULL!
goto check
