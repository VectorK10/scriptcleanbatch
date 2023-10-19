@echo off

set session=USER


REM Nettoyage des fichiers temporaires Windows
echo Nettoyage des fichiers temporaires Windows

del C:\Users\%session%\AppData\Local\Temp\*.* /s  /q && FOR /D %%p IN ("C:\Users\%session%\AppData\Local\Temp\*.*") DO rmdir "%%p" /s /q
del /s  /q C:\Windows\Prefetch\*.* && FOR /D %%p IN ("C:\Windows\Prefetch\*.*") DO rmdir "%%p" /s /q
del /s  /q C:\Windows\Temp\*.* && FOR /D %%p IN ("C:\Windows\Temp\*.*") DO rmdir "%%p" /s /q


REM Suppression des fichiers cache et cookies Internet Explorer 
echo Suppression des fichiers cache et cookies Internet Explorer 

set DataDir=C:\Users\%session%\AppData\Local\Microsoft\Intern~1
del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

REM set History=C:\Users\%session%\AppData\Local\Microsoft\Windows\History
REM del /q /s /f "%History%"
REM rd /s /q "%History%"

set IETemp=C:\Users\%session%\AppData\Local\Microsoft\Windows\Tempor~1
del /q /s /f "%IETemp%"
rd /s /q "%IETemp%"

set Cookies=C:\Users\%session%\AppData\Roaming\Microsoft\Windows\Cookies
del /q /s /f "%Cookies%"
rd /s /q "%Cookies%"


REM On cr?e une sous-cl? de registre pour chaque type de fichiers ? nettoyer et on leur attribue la valeur 1337 
echo Cr?ation des sous-cl?s de registre 

REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameNewsFiles" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameStatisticsFiles" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameUpdateFiles" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Service Pack Cleanup" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v Stateflags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Sync Files" /V StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v StateFlags1337 /d 2 /t REG_DWORD /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v StateFlags1337 /d 2 /t REG_DWORD /f


REM Lancement de la commande de nettoyage avec l'attribut 1337
REM echo Lancement du nettoyage du disque C:
REM cleanmgr /sagerun:1337
