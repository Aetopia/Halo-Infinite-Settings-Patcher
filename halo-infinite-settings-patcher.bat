@echo off
:: Fetch Files
curl.exe -L# "https://raw.githubusercontent.com/Aetopia/Halo-Infinite-Settings-Patcher/main/halo-infinite-settings-patcher.py" -o "%TEMP%\halo-infinite-settings-optimizer.py"
curl.exe -L# "https://raw.githubusercontent.com/Aetopia/Halo-Infinite-Settings-Patcher/main/settings.json" -o "%TEMP%\settings.json"
curl.exe -L# "https://github.com/Aetopia/PyOne-Onefile-Python-Interpreter/releases/download/v3.10/pyone.exe" -o "%TEMP%\pyone.exe"

:: Execute
python.exe "%TEMP%\halo-infinite-settings-optimizer.py"