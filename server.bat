@echo off
title PERITA CRAFT -S
::color 9
:inicio
cls
cd D:\peritabash
echo.
echo *******************Instalacion********************
echo Perita script un script dedicado para configurar
echo servidores locales y ponerlos online
echo para que todo el mundo se pueda unir
echo por favor selecione una de las opciones
echo no olvide editar la config y asiganar los puertos
echo de sus servidores locales hay :D
echo *************************************************
echo *******************Opciones**********************
echo 1- Editar Confi De Puertos
echo 2- Iniciar Servicio
echo 3- Paguina [opcional]
echo 4- mariadb
echo 5- iniciar netwoork
echo *************************************************

::-----------------------------
::remlistademenus
set/p menu=Seleciona un numero=
if "%menu%"=="1" goto config
if "%menu%"=="2" goto tunel
if "%menu%"=="3" goto web
if "%menu%"=="4" goto mariadb
if "%menu%"=="5" goto netwoork

:alert
cls
msg * hey! debes selecionar una opcion valida!
goto inicio

:config
cls
notepad C:\Users\pauka\AppData\Local\ngrok\ngrok.yml
goto inicio
exit

:tunel
cls
"ngrok.exe"
ngrok start --all --region us
echo -------------------------------------------------------
echo hola! estamos apagando el serivicio de puertos
echo o
echo Ocurrio un error al iniciar el servicio
echo -------------------------------------------------------
echo preciona enter para salir!
timeout 60
echo (%time%) saliendo..!
goto inicio
::---------------------------
::Region Code	Location
::ap	Asia/Pacific (Singapore)
::au	Australia (Sydney)
::eu	Europe (Frankfurt)
::in	India (Mumbai)
::jp	Japan (Tokyo)
::sa	South America (São Paulo)
::us	United States (Ohio)
::---------------------------
::"tunel.vbs"
::goto inicio

:web
cls
start https://dashboard.ngrok.com/cloud-edge/endpoints
goto inicio


:mariadb
cls
D:
echo ---------------------------------------------------------
echo commandos para usar con maria db
type D:\peritabash\mariadb.txt
echo ---------------------------------------------------------
color 7
mysql -u root -p
goto inicio

:netwoork
cls
cd D:\peritabash
echo.
echo *******************Instalacion********************
echo inicia los servidores mas comodamente
echo solo dando unos pocos clicks :D
echo *************************************************
echo *******************PeritaCf**********************
echo a- iniciar [omlet]
echo b- iniciar [survival]
echo c- Iniciar [skyblock]
echo d- Iniciar [mina y compra]
echo e- paguina proxy
echo f- salir menu principal
echo *************************************************

::-----------------------------
::menu inicio server
::-----------------------------
set/p netwoork=Seleciona una opcion=
if "%netwoork%"=="a" goto omlet
if "%netwoork%"=="b" goto survival
if "%netwoork%"=="c" goto skyblock
if "%netwoork%"=="d" goto mina
if "%netwoork%"=="e" goto paguina
if "%netwoork%"=="f" goto salir

:alert
cls
start https://control.optikservers.com/server/73c03918
msg * hey! debes selecionar una opcion valida! no olvides editar la config del proxy online!!
goto netwoork

:omlet
cls
echo.
echo *****************tipo de inicio******************
echo a qui podras elejir que tipo de inicio quieres
echo para tu server en bucle o normal
echo -------------------------------------------------
echo el blucle sirve en caso de que se apage solo
echo su servidor se prenda nuevamente automaticamente
echo -------------------------------------------------
echo el normal solo sirve para test pero lo que
echo hace es una ves su server se apage no se prenda
echo de forma automatica como la otra opcion :D
echo -------------------------------------------------
echo *************************************************
echo *******************Opciones**********************
echo 1- iniciar-app [omlet]
echo 2- blucle
echo 3- inicio normal
echo 4- menu servers
echo *************************************************

::-----------------------------
::menu inicio server
::-----------------------------
set/p omlet=Seleciona una opcion=
if "%omlet%"=="1" goto app
if "%omlet%"=="2" goto omlet-bucle
if "%omlet%"=="3" goto omlet-normal
if "%omlet%"=="4" goto salir-omlet

:alert
cls
msg * hey! debes selecionar una opcion valida!
goto omlet

:app
cls
cd C:\Users\pauka\AppData\Local\omlet_arcade_pc
"Omlet Arcade (beta).exe"
goto omlet

:omlet-normal
cls
cd C:\Users\pauka\Documents\trabajo\server\proxy
java -jar server.jar nogui 
goto omlet

:omlet-bucle
cls
cd C:\Users\pauka\Documents\trabajo\server\proxy
java -jar server.jar nogui 
echo -------------------------------------------------------
echo systema de blucle iniciado :D
echo -------------------------------------------------------
echo preciona enter para salir!
echo con control + c para salir
timeout 10
echo (%time%) saliendo..!
goto omlet-bucle

:salir-omlet
cls
goto netwoork

::----------------------------------------------------------------------------------::

:survival
cls
echo.
echo *****************tipo de inicio******************
echo a qui podras elejir que tipo de inicio quieres
echo para tu server en bucle o normal
echo -------------------------------------------------
echo el blucle sirve en caso de que se apage solo
echo su servidor se prenda nuevamente automaticamente
echo -------------------------------------------------
echo el normal solo sirve para test pero lo que
echo hace es una ves su server se apage no se prenda
echo de forma automatica como la otra opcion :D
echo -------------------------------------------------
echo *************************************************
echo *******************Opciones**********************
echo 1- blucle
echo 2- inicio normal
echo 3- menu servers
echo *************************************************

::-----------------------------
::menu inicio server
::-----------------------------
set/p survival=Seleciona una opcion=
if "%survival%"=="1" goto survival-bucle
if "%survival%"=="2" goto survival-normal
if "%survival%"=="3" goto survival-salir

:alert
cls
msg * hey! debes selecionar una opcion valida!
goto omlet

:survival-bucle
cls
D:
cd D:\Perita-Network\survival
java -Xmx5120M -Xms128M -jar server.jar nogui 
echo -------------------------------------------------------
echo systema de blucle iniciado :D
echo -------------------------------------------------------
echo preciona enter para salir!
echo con control + c para salir
timeout 10
echo (%time%) saliendo..!
goto survival-bucle

:survival-normal
cls
D:
cd D:\Perita-Network\survival
java -Xmx5120M -Xms128M -jar server.jar nogui 
goto omlet

:survival-salir
cls
goto netwoork

::----------------------------------------------------------------------------------::

:skyblock
cls
D:
cd D:\Perita-Network\skyblock
java -jar server.jar nogui
echo -------------------------------------------------------
echo su servidor se apago por favor 
echo -------------------------------------------------------
echo preciona enter para salir!
timeout 60
echo (%time%) saliendo..!
goto netwoork

:mina
cls
D:
cd D:\Perita-Network\minaycompra
java -jar server.jar nogui
echo -------------------------------------------------------
echo su servidor se apago por favor 
echo -------------------------------------------------------
echo preciona enter para salir!
timeout 60
echo (%time%) saliendo..!
goto netwoork

:paguina
cls
start https://control.optikservers.com/server/73c03918
msg * esta es la paguina donde podras editar tus servidores
goto netwoork

:salir
cls
goto inicio