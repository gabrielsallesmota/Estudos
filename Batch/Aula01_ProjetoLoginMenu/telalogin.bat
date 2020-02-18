@echo off
title programacao Batch - Atividade Conceitual 01
mode 40:30
color 0a

:inicio
rem comentário
cls
echo ---------------------------------------
echo                  LOGIN
echo ---------------------------------------
echo.
set /p usuario=Usuario:

if %usuario% == Gabriel  (goto:Senha) else (
   echo.
   echo ---------------------------
   echo     USUARIO INVALIDO !
   echo ---------------------------
   echo Pressione qualquer tecla
   pause > null
   goto inicio)

:Senha
set /p op=Senha:
if %op% == 1234 (call menuprincipal.bat) else (
   echo.
   echo ---------------------------
   echo     SENHA INVALIDA !
   echo ---------------------------
   echo Pressione qualquer tecla
   pause > null 
   goto:senha)
  
	


