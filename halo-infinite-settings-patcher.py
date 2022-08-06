import json
import os
from traceback import print_exc
from getpass import getpass

def main():
    LOCALAPPDATA= os.getenv("LOCALAPPDATA")
    uwp = f'{LOCALAPPDATA}\Packages\Microsoft.254428597CFE2_8wekyb3d8bbwe\LocalCache\Local\HaloInfinite\Settings\SpecControlSettings.json'
    steam = f'{LOCALAPPDATA}\HaloInfinite\Settings\SpecControlSettings.json'

    with open(f'{os.path.dirname(__file__)}/settings.json', 'r', encoding='utf-8') as f:
        settings = json.load(f)

    for file in (uwp, steam):
        if os.path.exists(file):
            break

    with open(file, 'r+', encoding='utf-8') as f:
        contents = json.load(f)
        f.seek(0)
        for key, value in settings.items():
            print(key, value)
            contents[key] = value
        f.write(json.dumps(contents, indent=4))
    print('\nFinished!')

if __name__ == '__main__':
    try:
        main()
    except:
        print_exc()
    getpass('Press [Enter] to exit...')
