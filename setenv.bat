@echo off
REM setlocal

SET PATH_ROOT=%~dp0
IF %PROCESSOR_ARCHITECTURE% EQU x86 SET PATH=%PATH%;%PATH_ROOT%App\redisbin
IF %PROCESSOR_ARCHITECTURE% NEQ x86 SET PATH=%PATH%;%PATH_ROOT%App\redisbin64

start redis-server.exe
start redis-cli.exe

REM endlocal
