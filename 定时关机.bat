@echo off
title ��ʱ�ػ�����
color 0A
mode con lines=10 cols=50

:menu
cls
echo ��Ҫ�޸Ĺػ�ʱ�䣬����ȡ�����򣬼�����C��2
echo ��ѡ����Ӧ���������Ӧ[]�ڵ����ֻ���ĸ
echo [1][T]���ж�ʱ�ػ�����
echo [2][C]ȡ����ʱ�ػ�����
echo [3][Q]�˳�������
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
echo ���������������������룡
echo 3����Զ���ת
ping /n 3 127.0.0.1 >nul
goto menu

:time
cls
cls
echo ������ػ�ʱ�䣨��λСʱ��
set /p b=
set /a c=b*3600

cls
echo ������ػ�ʱ�䣨��λ���ӣ�
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