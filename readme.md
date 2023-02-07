# Pollen
CrOS User Policy Editor
![Pollen](/Pollen.svg)

## How To Use
- Note: Devmode **NEEDS** to be enabled. Use some sort of exploit like sh1mmer to enable devmode
- Open Crosh
- Type In `shell`
- Type In `sudo curl -k https://pollen.scarat3k.me/Pollen.sh | bash`

## Different Mods
- Pollen (1) Is Non RootFS Version
  - Must Be Ran Every Time Apon Boot
  - Reccomened

- PollenFS (2) Is RootFS Version
  - Requires RootFS Disabled
  - Note Disabeling RootFS And Entering Verified Mode **WILL** Brick You Chromebook
  - To Disable RootFS Run This: `sudo curl -k https://pollen.scarat3k.me/RootFS.sh`
  - Does Not Need To Be Re Ran

## How It Works
It works by loading a custom user policy in to CrOS. (Similar to how policies on windows work)\
Using this we can either disenable RootFS or temporarily to load it.\
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.\
Then simpily we just create the file and restart.

## How To Edit
You Can Customize The User Policy By Editing\
`sudo echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null}'`\
This is the policy loaded. A genorator to edit this will be coming soonish

## Credits
- Pollen Developer - Scarat3k
- Discovery Of Exploit - Rafflesia
- Original Script Developer - OlyB
- Logo - Nitelite
