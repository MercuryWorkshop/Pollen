# Pollen
Pollen is an exploit that allows you to load custom User Policies.

## How To Use
Note: Devmode **NEEDS** to be enabled. Use some sort of exploit like sh1mmer to enable devmode
- Open Crosh (ctrl+alt+t)
- Type In `shell`
- Type In `sudo bash <(curl -k https://pollen.scarat3k.me/Cotton.sh)`

## How It Works
It works by loading a custom user policy in to CrOS. (Similar to how policies on windows work)\
Using this we can either disenable RootFS or temporarily to load it.\
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.\
Then simpily we just create the file and restart.

## Credits
Cotton & Pollen Developer - Scarat3k
- Discovery Of Exploit - Rafflesia
- Original Script Developer - OlyB
- Providing User Policy Base - Ethonic