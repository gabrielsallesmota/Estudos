@echo off 
title atividade 1
mode 90,90
color 0a
:INICIO
cls
echo=============================
echo  APLICATIVOS DO WINDOWS 
echo=============================
echo [T]Teclado Virtual
echo [C]Calculadora
echo [B]Bloco de Notas
echo [P]Paint
echo [W]Windows Explorer
echo [PC]Painel de Controle
echo [R]Retornar ao Menu Anterior
echo============================
set/p op=Escolha uma opcao!! :
if %op% == T (goto:teclado)
if %op% == C (goto:calculadora)
if %op% == B (goto:bloco)
if %op% == P (goto:paint)
if %op% == W (goto:explorer)
if %op% == PC (goto:painel)
if %op% == R (call menuprincipal.bat) else (
   echo.
   echo===========================
   echo    OPCAO INVALIDA
   echo===========================
   pause > nul
goto:INICIO)
:teclado
start osk.exe
goto:INICIO

:calculadora
start calc.exe
goto:INICIO

:bloco
start notepad.exe
goto:INICIO

:paint
start mspaint.exe
goto:INICIO

:explorer
start explorer.exe
goto:INICIO

:painel
start control.exe 
goto:INICIO