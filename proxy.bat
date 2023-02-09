@echo OFF
:loop
cls
cd %APPDATA%\Microsoft\proxy\PeritaProxy
java -jar server.jar nogui
exit