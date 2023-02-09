@echo off
:inicio
cls
TITLE PocketMine Perita
cd D:\Perita-Network\pocket
echo.
echo ********************PeritaCF*********************
echo PeritaPocketmine Script de personalizacion
echo *************************************************
echo *******************Opciones**********************
echo 1- Editar Config De proxy
echo 2- Iniciar server
echo 3- salir
echo *************************************************

::-----------------------------
::remlistademenus
set/p menu=Seleciona un numero=
if "%menu%"=="1" goto config
if "%menu%"=="2" goto netwoork
if "%menu%"=="3" goto salir

:alert
cls
msg * hey! debes selecionar una opcion valida!
goto inicio

:config
cls
notepad D:\Perita-Network\pocket\proxy\config.yml
goto inicio
exit

:salir
cls
goto exit

:netwoork
cls
TITLE PocketMine Perita
cd D:\Perita-Network\pocket
echo.
echo *******************Instalacion********************
echo inicia los servidores mas comodamente
echo solo dando unos pocos clicks :D
echo *************************************************
echo *******************PeritaCf**********************
echo 1- iniciar modo [bucle]
echo 2- iniciar modo [normal]
echo 3- salir
echo *************************************************
::-----------------------------
::menu inicio server
::-----------------------------
set/p netwoork=Seleciona una opcion=
if "%netwoork%"=="1" goto pocket-bucle
if "%netwoork%"=="2" goto pocket-normal
if "%netwoork%"=="3" goto pocket-salir

:pocket-bucle
cls
echo -------------------------------
echo          pocket perita
echo -------------------------------
start proxy.vbs
TITLE PocketMine-MP server software for Minecraft: Bedrock Edition
cd /d %~dp0

set PHP_BINARY=

where /q php.exe
if %ERRORLEVEL%==0 (
	set PHP_BINARY=php
)

if exist bin\php\php.exe (
	rem always use the local PHP binary if it exists
	set PHPRC=""
	set PHP_BINARY=bin\php\php.exe
)

if "%PHP_BINARY%"=="" (
	echo Couldn't find a PHP binary in system PATH or "%~dp0bin\php"
	echo Please refer to the installation instructions at https://doc.pmmp.io/en/rtfd/installation.html
	pause
	exit 1
)

if exist PocketMine-MP.phar (
	set POCKETMINE_FILE=PocketMine-MP.phar
) else (
	echo PocketMine-MP.phar not found
	echo Downloads can be found at https://github.com/pmmp/PocketMine-MP/releases
	pause
	exit 1
)

if exist bin\mintty.exe (
	start "" bin\mintty.exe -o Columns=88 -o Rows=32 -o AllowBlinking=0 -o FontQuality=3 -o Font="Consolas" -o FontHeight=10 -o CursorType=0 -o CursorBlinks=1 -h error -t "PocketMine-MP" -i bin/pocketmine.ico -w max %PHP_BINARY% %POCKETMINE_FILE% --enable-ansi %*
) else (
	REM pause on exitcode != 0 so the user can see what went wrong
	%PHP_BINARY% %POCKETMINE_FILE% %* || pause
)
java-t.vbs
echo Press control+C to exit the server!
timeout 10
echo (%time%) Restarting!
goto pocket-bucle


:pocket-normal
cls
echo -------------------------------
echo          pocket perita
echo -------------------------------
start proxy.vbs
TITLE PocketMine-MP server software for Minecraft: Bedrock Edition
cd /d %~dp0

set PHP_BINARY=

where /q php.exe
if %ERRORLEVEL%==0 (
	set PHP_BINARY=php
)

if exist bin\php\php.exe (
	rem always use the local PHP binary if it exists
	set PHPRC=""
	set PHP_BINARY=bin\php\php.exe
)

if "%PHP_BINARY%"=="" (
	echo Couldn't find a PHP binary in system PATH or "%~dp0bin\php"
	echo Please refer to the installation instructions at https://doc.pmmp.io/en/rtfd/installation.html
	pause
	exit 1
)

if exist PocketMine-MP.phar (
	set POCKETMINE_FILE=PocketMine-MP.phar
) else (
	echo PocketMine-MP.phar not found
	echo Downloads can be found at https://github.com/pmmp/PocketMine-MP/releases
	pause
	exit 1
)

if exist bin\mintty.exe (
	start "" bin\mintty.exe -o Columns=88 -o Rows=32 -o AllowBlinking=0 -o FontQuality=3 -o Font="Consolas" -o FontHeight=10 -o CursorType=0 -o CursorBlinks=1 -h error -t "PocketMine-MP" -i bin/pocketmine.ico -w max %PHP_BINARY% %POCKETMINE_FILE% --enable-ansi %*
) else (
	REM pause on exitcode != 0 so the user can see what went wrong
	%PHP_BINARY% %POCKETMINE_FILE% %* || pause
)
java-t.vbs
goto netwoork

:pocket-salir
cls
goto inicio