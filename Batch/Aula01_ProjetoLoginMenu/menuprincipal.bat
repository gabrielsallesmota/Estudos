@echo off
title Programacao Batch - Menu Principal
mode 40:30
color 0a
:inicio
rem comentário
cls
echo.
echo ---------------------------------------
echo           MENU PRINCIPAL
echo ---------------------------------------
echo [P] Pacote Office
echo [A] Aplicativos do Windows
echo [S] Serviços de Rede
echo [G] Gerenciamento Windows
echo [E] Encerrar Sessão
echo [F] Finalizar Programa

echo ----------------------------------------
echo.
set /p op=DIGITE UMA OPCAO :

if %op% == P (call office.bat)
if %op% == A (goto:appwin)
if %op% == S (goto:network)
if %op% == G (goto:device)
if %op% == E (goto:telalogin)
if %op% == F (exit) else (
   echo.
   echo ---------------------------
   echo     OPCAO INVALIDA !
   echo ---------------------------
   pause > null
   goto inicio)


:office
call office.bat
:inicio

:appwin
call appwin.bat
:inicio

:network
call network.bat
:inicio

:device 
call device.bat
:inicio

:encerrar
call telalogin.bat
:inicio

   
