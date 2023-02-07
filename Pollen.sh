#!/bin/bash
clear
echo "+##############################################+"
echo "# Welcome To Pollen (v1)!                      #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Credit:                                      #"
echo "# Pollen Developer - Scaratek                  #"
echo "# Logo Designer - Nitelite                     #"
echo "# Found The Overlook - Rafflesia               #"
echo "# Made The Original Script - OlyB              #"
echo "# Fixed a tiny little bug - r58Playz           #"
echo "+##############################################+"
sleep 2
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
sudo mount --bind /tmp/overlay/etc /etc
echo "Pollen Has Been Successfully Applied!"

