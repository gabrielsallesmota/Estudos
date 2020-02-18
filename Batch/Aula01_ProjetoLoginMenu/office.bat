@echo off
title Programacao Batch - Tela Office
mode 40:30
color 0a
:office
echo.
echo ---------------------------------------
echo           MICROSOFT OFFICE
echo ---------------------------------------
echo [W] Word
echo [E] Excel
echo [P] Power Point
echo [A] Acess
echo [R] Retornar ao Menu


echo ----------------------------------------
echo.
set /p op=DIGITE UMA OPCAO :

if %op% == W (goto:word)
if %op% == E (goto:excel)
if %op% == P (goto:powerpoint)
if %op% == A (goto:access)
if %op% == R (call menuprincipal.bat) else (
   echo.
   echo ---------------------------
   echo     OPCAO INVALIDA !
   echo ---------------------------
   pause > null
   goto inicio )

:word
start winword.exe
goto inicio

:excel
start excel.exe
goto inicio

:powerpoint
start powerpnt.exe
goto inicio

:word
start access.exe
goto inicio
