@echo off 
title atividade 1
mode 90,90
color 0a
:INICIO
cls
echo=============================
echo     SERVICOS DE REDE
echo=============================
echo [I]Internet
echo [T]Testar Conexão Rede
echo [O]Obter IP da Máquina
echo [R]Retornar ao Menu Anterior
echo============================
set/p op=Escolha uma opcao!! :
if %op% == I (goto:in)
if %op% == T (goto:ping)
if %op% == O (goto:IP)
if %op% == R (call menuprincipal.bat) else (
   echo.
   echo===========================
   echo    OPCAO INVALIDA!!
   echo===========================
   pause > nul
goto:INICIO)
:in
set/p s=Escreva a URL :
start iexplore.exe %s%
goto:INICIO

:ping
set/p d=Escreva a URL ou IP:
ping %d%
pause > nul
goto:INICIO

:IP
ipconfig 
pause > nul
goto:INICIO
