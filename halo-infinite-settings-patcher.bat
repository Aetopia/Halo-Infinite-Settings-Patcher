@echo off
:: Fetch Files
curl.exe -sL# "https://raw.githubusercontent.com/Aetopia/Halo-Infinite-Settings-Patcher/main/halo-infinite-settings-patcher.py" -o "%TEMP%\halo-infinite-settings-patcher.py"
curl.exe -sL# "https://raw.githubusercontent.com/Aetopia/Halo-Infinite-Settings-Patcher/main/settings.json" -o "%TEMP%\settings.json"
curl.exe -sL# "https://github.com/Aetopia/PyOne-Onefile-Python-Interpreter/releases/download/v3.10.6/pyone.exe" -o "%TEMP%\pyone.exe"

:: Execute
"%TEMP%\pyone.exe" "%TEMP%\halo-infinite-settings-patcher.py"
