@echo off
echo "Alive 👾..."
:recheck
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels
echo "Alive 👾..."
goto recheck
