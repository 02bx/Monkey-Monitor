@echo off
cls
title ��������monkey��
:menu
cls
color 0A
echo.
echo 1.����systemui������
echo.
echo 2.����systemui������
echo.
echo q.�˳�
echo.
:cho
set choice=
set /p choice=          ��ѡ��:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto disable
if /i "%choice%"=="2" goto enable
if /i "%choice%"=="Q" exit
echo ѡ����Ч������������
echo.
goto cho
:disable
adb shell "su -c" pm disable com.android.systemui
adb shell reboot
pause&exit
:enable
adb shell "su -c" pm enable com.android.systemui
adb shell reboot
pause&exit