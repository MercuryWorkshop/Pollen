# Pollen
ChromeOS User Policy Editor
![Pollen](/Pollen.svg)

## How to Use
> [!NOTE]
You **need** to have Developer Mode enabled!
### Normal (Temporary)
- Open the VT-2 Shell
> [!NOTE]
To enter the VT-2 shell, press CTRL + ALT + F2 (usually the right arrow key on your Chromebook)
  - Log in as `root`
- Run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/Pollen.sh | bash`

### Disabled RootFS (Permanent)
> [!NOTE]
Disabling RootFS **will** soft-brick your Chromebook if you boot back into verified mode.
- Open the VT-2 Shell
  - Log in as `root`
- Run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/RootFS.sh | bash`
- Reboot
- Log in to the VT-2 Shell again
- Run `curl -Ls https://mercuryworkshop.github.io/Pollen/PollenFS.sh | bash`
> [!NOTE]
If you notice that policies are still being applied, visit `chrome://policy` and click "Reload Policies" or if chrome://policy is blocked, enter VT-2 and run `restart ui`.

## What's the difference?
The first method will only temporarily change policies, meaning changes will not be permanent. However, by disabling RootFS, policies will be edited permanently.

## What Pollen Doesn't Do
Pollen **cannot** edit device policies. Device policies are things like developer mode, etc. To edit device policies, check out [Lilac](https://github.com/mercuryworkshop/lilac)

## How Pollen Works
There's an overlooked feature in ChromeOS that allows policies to be loaded similarly to how they would be on Linux. On Linux, you can edit policies by making files in `/etc/opt/chrome/policies/managed`. The same feature still exists within ChromeOS, so we can create a file called `policy.json` in `/etc/opt/chrome/policies/managed`, and the existing policies will be overridden.

## Credits
- Discovery - Rafflesia
- Script Developer - OlyB
- Bug Fix - r58Playz
- Logo - Nitelite
- Readme - Scaratek
