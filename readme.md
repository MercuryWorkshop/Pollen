![Pollen](/Pollen.png)

## What is it?
Pollen is a user policy editor that takes advantage of how and where they are stored. On Linux systems, you can modify your set user policies by changing the file at `/etc/opt/chrome/policies/managed`. This works similarly within ChromeOS, allowing us to create a file called `Pollen.json` to modify existing user policies. 

Pollen **cannot** edit device policies like developer mode. If you want to modify device policies you should check out [Lilac](https://github.com/mercuryworkshop/lilac).

## How do I use it?
> [!IMPORTANT]
You must have developer mode must enabled for Pollen to work!

If you notice that Pollen change are not taking effect, visit `chrome://policy` and click "Reload Policies". If `chrome://policy` is blocked, enter VT-2 and run `restart ui`.

### Change Temporarily
To temporarily modify the user policy, enter the VT2 console by pressing `CTRL + ALT + F2`. You can login as `root` or `chronos` and then run the command: `curl -Ls https://mercuryworkshop.github.io/Pollen/Pollen.sh | bash` to execute Pollen.

### Change Permently
> [!WARNING]
> You can disable RootFS on your chromebook to make user policy changes persistent. However this will cause your chromebook to soft-brick if you re-enter verified mode. 

To disable RootFS, login as `root` on the VT2 shell and run the command `curl -Ls https://mercuryworkshop.github.io/Pollen/RootFS.sh | bash`. You can now execute pollen by rebooting the system, opening VT2, and running  `curl -Ls https://mercuryworkshop.github.io/Pollen/PollenFS.sh | bash`.

## Credits
- Discovery - Rafflesia
- Script Developer - OlyB
- Bug Fix - r58Playz
- Logo - Nitelite
- Readme - Scaratek
