#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To PollenFS!                         #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - Scaratek                                   #"
echo "# - r58Playz                                   #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed
echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "EditBookmarksEnabled": true, "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "DefaultPopupsSetting": 1, "AllowDeletingBrowserHistory": true, "AllowDinosaurEasterEgg": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null, "LacrosAvailability": "user_choice", "WallpaperImage": null}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json

echo ""
echo "PollenFS has been successfully applied!"
