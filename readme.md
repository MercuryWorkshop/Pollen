# Pollin
Pollin is an overlook in CrOS that allows you to load custom User Policies

## How To Use
Note: Devmode **NEEDS** to be enabled. Use some sort of exploit like sh1mmer to enable devmode\
RootFS Version (Note: If you go back into verified mode it **WILL** brick you chromebook)
- Open Crosh (ctrl+alt+t)
- Type In `shell`
- Type In `bash <(curl -k https://pollin.scarat3k.me/rootFS.sh)`
- Restart
- Open Crosh Again
- Type In `shell`
- Type In `bash <(curl -k https://pollin.scarat3k.me/CottonFS.sh)`
- Go Through Script Genorator
  
Temp Version (Note: You Will Need To Do This Everytime You Boot Your Chromebook)
- Open Crosh (ctrl+alt+t)
- Type In `shell`
- Type In `bash <(curl -k https://pollin.scarat3k.me/cotton.sh)`
- Go Through Script Genorator

## How It Works
It works by loading a custom user policy in to CrOS. (Similar to how policies on windows work)\
Using this we can either disenable RootFS or temporarily to load it.\
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.\
Then simpily we just create the file and restart.

## Credits
- Pollin Developer, Genorator Developer, Cotton Developer - Scarat3k
- Discovery Of Exploit - Rafflesia
- Original Script Developer - OlyB
- Providing There User Policy - Ethonic#9445
