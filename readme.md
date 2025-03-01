![Pollen](/Pollen.png)

>[!IMPORTANT]
>Pollen is patched on ChromeOS R131 and above. <br />
<!--
>Patches: <br />
>https://chromiumdash.appspot.com/commit/313936b9fe8c343841378ffe5f33ad34de3bb3b7 <br />
>https://chromium-review.googlesource.com/c/chromium/src/+/5258257
-->

## What is it?
Pollen is a user policy editor that takes advantage of how policies are stored. On Linux systems, user policies can be modified by editing the file `/etc/opt/chrome/policies/managed`. ChromeOS works similarly where you can create a file named `Pollen.json` to change existing user policies.

Pollen **cannot** modify policies such as developer mode. If you want to modify **device policies**, check out [Lilac](https://github.com/mercuryworkshop/lilac).

## How do I use it?
> [!IMPORTANT]
You must have developer mode enabled for Pollen to work!

If you notice that policy changes are not taking effect, visit `chrome://policy` and click "Reload Policies." If `chrome://policy` is blocked, enter VT-2 and run `restart ui`.

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
