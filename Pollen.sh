#!/bin/bash
clear
echo "###############################"
echo "Welcome To Pollen!"
echo "The User Policy Editor"
echo "----------------------"
echo "Credit:"
echo "Pollen Developer - Scaratek"
echo "Logo Designer - Nitelite"
echo "Found The Overlook - Rafflesia"
echo "Made The Original Script - OlyB"
echo "###############################"
sleep 5
clear

echo "Please Refer to https://github.com/mercuryworkshop/pollen for help"
echo "Pollen = 1. PollenFS = 2"
read -p "Select Pollen Version: " Mode

if [ "$Mode" == "1" ]; then
  sudo mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
  sudo echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
  sudo cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
  sudo mount --bind /tmp/overlay/etc /etc
  echo "Pollen Has Been Successfully Applied"
else
  echo "Not Valid Input, Please Try Again!"
  exit
fi

if [ "$Mode" == "2" ]; then
  sudo mkdir -p /etc/opt/chrome/policies/managed
  sudo echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true}' > /etc/opt/chrome/policies/managed/policy.json
  echo "PollenFS Has Been Successfully Applied"
else
  echo "Not Valid Input, Please Try Again!"
  exit
fi
