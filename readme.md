# Pollen
chromeOS User Policy Editor
![Pollen](/Pollen.svg)

## How To Use
- Note: Devmode **NEEDS** to be enabled. Use [Sh1mmer](https://sh1mmer.me) or another method to enable devmode. Ideally, you should be using this to modify policies on a managed account while unenrolled.
- Open Crosh
- Run `shell`
- Run `sudo su`
- Run `curl https://pollen.scarat3k.me/Pollen.sh | bash`
- Done! It may take a few seconds for the new policy to apply. If it does not apply, sign out and back in again.

## How It Works
It works by loading a custom user policy in to chromeOS. (Similar to how policies on windows work.)  
Using this we can either disenable RootFS or temporarily to load it.  
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.  
Then simpily we just create the file and restart.

## Credits
- Pollen Developer - Scaratek
- Discovery Of The Overlook - Rafflesia
- Script Developer - OlyB
- Logo - Nitelite
- Made Scaratek Not Lose Her Sanity - r58playz
- Provided Base User Policy For Modification - Ethonic
