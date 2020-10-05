@echo off

echo Adding folder entries
SET WebStormPath=C:\Program Files\JetBrains\IntelliJ IDEA 2020.2\bin\idea64.exe

@reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA" /t REG_SZ /v "" /d "Open Folder as IntelliJ IDEA Project"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%1\"" /f

pause