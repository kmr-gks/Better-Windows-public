@echo off
openfiles > NUL 2>&1 
if not %ERRORLEVEL% == 0 (
  echo 一般権限で実行されたため管理者権限で再実行します。
  powershell start-process \"%~f0\" -Verb runas
  goto exit
)
rem 管理者権限で実行したい処理を以下に記述する
title Windows Updateを有効にする
echo 管理者です。
rd /s /q C:\Windows\System32\GroupPolicy
md C:\Windows\System32\GroupPolicy
echo 10秒後に再起動します。
timeout /t 10
shutdown /r /t 0