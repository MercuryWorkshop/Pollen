# Pollen
Pollen is an exploit that allows you to load custom User Policies.

## How To Use
- Note: Devmode **NEEDS** to be enabled. Use some sort of exploit like sh1mmer to enable devmode
Pollen (This version does not require RootFS disabled but you do need to run this every time your boot your CB):
- Open Crosh (ctrl+alt+t)
- Type In `shell`
- Type In `sudo curl -k https://pollen.scarat3k.me/Pollen.sh | bash`
- Select "1"
PollenFS (Requires RootFS Disabled. Warning if you use this version and but your CB back in verified mode it **will** be bricked):
- Open Crosh (ctrl+alt+t)
- Type In `shell`
- Type In `sudo curl -k https://pollen.scarat3k.me/Pollen.sh | bash`
- Select "2"

## How It Works
It works by loading a custom user policy in to CrOS. (Similar to how policies on windows work)\
Using this we can either disenable RootFS or temporarily to load it.\
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.\
Then simpily we just create the file and restart.

## Credits
- Pollen Developer - Scarat3k
- Discovery Of Exploit - Rafflesia
- Original Script Developer - OlyB
- Providing User Policy Base - Ethonic
- Logo - Nitelite
