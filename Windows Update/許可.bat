@echo off
openfiles > NUL 2>&1 
if not %ERRORLEVEL% == 0 (
  echo ��ʌ����Ŏ��s���ꂽ���ߊǗ��Ҍ����ōĎ��s���܂��B
  powershell start-process \"%~f0\" -Verb runas
  goto exit
)
rem �Ǘ��Ҍ����Ŏ��s�������������ȉ��ɋL�q����
title Windows Update��L���ɂ���
echo �Ǘ��҂ł��B
rd /s /q C:\Windows\System32\GroupPolicy
md C:\Windows\System32\GroupPolicy
echo 10�b��ɍċN�����܂��B
timeout /t 10
shutdown /r /t 0