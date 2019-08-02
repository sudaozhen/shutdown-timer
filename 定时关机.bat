@echo off
title 定时关机程序
color 0A
mode con lines=10 cols=50

:menu
cls
echo 如要修改关机时间，请先取消程序，即输入C或2
echo 请选择相应任务：输入对应[]内的数字或字母
echo [1][T]运行定时关机程序
echo [2][C]取消定时关机程序
echo [3][Q]退出本程序
set /p a=
if "%a%"=="1" goto time
if "%a%"=="t" goto time
if "%a%"=="T" goto time

if "%a%"=="2" goto cancle
if "%a%"=="c" goto cancle
if "%a%"=="C" goto cancle

if "%a%"=="3" exit
if "%a%"=="q" exit
if "%a%"=="Q" exit
cls
echo 您的输入有误！请重新输入！
echo 3秒后自动跳转
ping /n 3 127.0.0.1 >nul
goto menu

:time
cls
cls
echo 请输入关机时间（单位小时）
set /p b=
set /a c=b*3600

cls
echo 请输入关机时间（单位分钟）
set /p e=
set /a d=e*60
set /a f=c+d
goto shutdown

:hour


:shutdown
shutdown /s /t %f%
goto menu

:cancle
shutdown /a
goto menu