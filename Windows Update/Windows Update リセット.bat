@echo off
openfiles > NUL 2>&1 
if not %ERRORLEVEL% == 0 (
  echo àÍî å†å¿Ç≈é¿çsÇ≥ÇÍÇΩÇΩÇﬂä«óùé“å†å¿Ç≈çƒé¿çsÇµÇ‹Ç∑ÅB
  powershell start-process \"%~f0\" -Verb runas
  goto exit
)
rem https://forest.watch.impress.co.jp/docs/serial/dekiwazapc/1067817.html
net stop usosvc
net stop dosvc
net stop wuauserv
net stop bits
move %SystemRoot%\SoftwareDistribution %SystemRoot%\SoftwareDistribution.old
del %ALLUSERSPROFILE%\Microsoft\Network\Downloader\qmgr0.dat
del %ALLUSERSPROFILE%\Microsoft\Network\Downloader\qmgr1.dat
net start bits
net start wuauserv
net start dosvc
net start usosvc
%SystemRoot%\system32\usoclient.exe StartScan