@echo off
powershell -Command 'Invoke-WebRequest http://localhost:4040/api/tunnels'
:recheck
tasklist | find /i "ngrok.exe"
goto recheck
