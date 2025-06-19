# Pollen
chromeOS User Policy Editor
![Pollen](/Pollen.svg)

## How to Use
> [!NOTE]
Developer Mode **needs** to be enabled!
### Normal (Temporary)
- Open the VT-2 Shell
> [!NOTE]
To enter the VT-2 shell press ctrl + alt + f2 (usually the right arrow key on your Chromebook)
  - Login in as `root`
- Run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/Pollen.sh | bash`

### Disabled RootFS (Permanent)
> [!NOTE]
Disabling RootFS **will** soft-brick your Chromebook if you boot back into verified mode
- Open the VT-2 Shell
  - Login in as `root`
- Run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/RootFS.sh | bash`
- Reboot
- Login to the VT-2 Shell again
- run `curl -Ls https://mercuryworkshop.github.io/Pollen/PollenFS.sh | bash`
>[!NOTE]
If you notice that policies are still being applied visit `chrome://policy` and click "Reload Policies"

## What's the difference?
Method one will only temporarily change the policies. Meaning changes are not permanent. However by disabling RootFS policies will be edited permanently.

## What Pollen Doesn't Do
Pollen **cannot** edit device policies. Device policies are things like developer mode, etc. To edit device policies checkout [Lilac](https://github.com/mercuryworkshop/lilac)

## How Pollen works
Their is a overlooked feature in ChromeOS that allows policies to be load similar to how they would be on linux. On linux you can edit policies by making files in `/etc/opt/chrome/policies/managed` The feature still exists within ChromeOS so we can make a file called `Pollen.json` in `/etc/opt/chrome/policies/managed` and the policies will be over-ridded.


## Credits
- Discovery - Rafflesia
- Script Developer - OlyB
- Fixed Bug - r58playz
- Logo - Nitelite
- Readme - Scaratek
