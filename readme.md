# Pollen
chromeOS User Policy Editor
![Pollen](/Pollen.svg)

## How To Use
- Note: Devmode **NEEDS** to be enabled.
- Open Crosh
- Run `shell`
- Run `sudo su`
- Run `curl -Ls https://tinyurl.com/pollen-sh | bash`
- Done! It may take a few seconds for the new policy to apply. If it does not apply, press `alt+vol_up+x`.

## How It Works
It works by loading a custom user policy in to chromeOS. (Similar to how policies on windows work.)  
Using this we can either disable RootFS or temporarily to load it.  
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.  
Then simpily we just create the file and restart.


## Credits
- Pollen Developer - Scaratek
- Discovery Of The Overlook - Rafflesia
- Script Developer - OlyB
- Logo - Nitelite
- Fixed Bug - r58playz
- Added Policies - 5less-chromosones
