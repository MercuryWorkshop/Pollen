#!/bin/bash
clear
echo "###############################"
echo "Welcome To Pollen!"
echo "The User Policy Editor"
echo "----------------------"
echo "Credit:"
echo "Failed And Failed Again (Useless) - Scaratek"
echo "Logo Designer - Nitelite"
echo "Found The Overlook - Rafflesia"
echo "Made The Original Script - OlyB"
echo "###############################"
sleep 5

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
sudo echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
sudo mount --bind /tmp/overlay/etc /etc
echo "Pollen Has Been Successfully Applied!"

