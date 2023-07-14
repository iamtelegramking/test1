@echo off
curl -s localhost:4040/api/tunnels
:recheck
tasklist | find /i "ngrok.exe"
goto recheck
