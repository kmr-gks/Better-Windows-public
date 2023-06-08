@echo off
openfiles > NUL 2>&1 
if not %ERRORLEVEL% == 0 (
  echo 一般権限で実行されたため管理者権限で再実行します。
  powershell start-process \"%~f0\" -Verb runas
  goto exit
)
rem 管理者権限で実行したい処理を以下に記述する
title Windows Updateを無効にする
echo 管理者です。
xcopy "%~dp0\c.windows.system32.grouppolicyの中身" C:\Windows\System32\GroupPolicy /e /q /y
echo 10秒後に再起動します。
timeout /t 10
shutdown /r /t 0