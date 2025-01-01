![Pollen](/Pollen.png)

## What is it?
Pollen is a user policy editor that takes advantage of Google's storage of group policies. On Linux systems, configurations set in Google admin can be edited in `/etc/opt/chrome/policies/managed`. This works similarly within ChromeOS, allowing us to create a file called `Pollen.json` to modify existing user policies. Pollen **cannot** edit device policies like developer mode, etc. If you want to edit device policies, check out [Lilac](https://github.com/mercuryworkshop/lilac).


## How do I use it?
> [!IMPORTANT]
Developer mode must be enabled for Pollen to work!

If you notice that policies are still being applied, visit `chrome://policy` and click "Reload Policies" or if chrome://policy is blocked, enter VT-2 and run `restart ui`.

### Change Temporarily
To temporarily change the group policy, enter the Vt2 console by pressing CTRL + ALT + F2. You can login as `root` or `chronos` and then run the command: `curl -Ls https://mercuryworkshop.github.io/Pollen/Pollen.sh | bash` to execute Pollen.

### Change Permently
> [!WARNING]
> You can disable RootFS on your chromebook to make user policy changes persistant. However this will cause your chromebook to soft-brick if you re-enter verified mode. 

To disable RootFS, login as `root` on the VT2 shell and run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/RootFS.sh | bash`. Now reboot the system, open VT2, and run  `curl -Ls https://mercuryworkshop.github.io/Pollen/PollenFS.sh | bash`.

## Credits
- Discovery - Rafflesia
- Script Developer - OlyB
- Bug Fix - r58Playz
- Logo - Nitelite
- Readme - Scaratek
