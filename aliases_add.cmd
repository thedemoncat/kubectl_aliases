@echo off 

set aliasfile=%~dp0aliasesfile.doskey
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DEFAULT_NAMESPACE /D default
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"%aliasfile%"" /f