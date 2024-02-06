#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen!                           #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - Scaratek                                   #"
echo "# - r58Playz                                   #"
echo "# - Honkychunkymonkey - Additional Changes     #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "EditBookmarksEnabled": true, "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "DefaultPopupsSetting": 1, "AllowDeletingBrowserHistory": true, "AllowDinosaurEasterEgg": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true, "ExtensionAllowedTypes": null, "ExtensionInstallAllowlist": null, "ExtensionInstallBlocklist": null, "ExtensionInstallForcelist": null, "ExtensionSettings": null, "PasswordManagerEnabled": "true", "TaskManagerEndProcessEnabled": "true", "UptimeLimit": "null", "SystemTerminalSshAllowed": "true", "SystemTimezone": "",  "IsolatedAppsDeveloperModeAllowed": "true", "ForceGoogleSafeSearch": "false", "ForceYouTubeRestrict": "0",  "EasyUnlockAllowed": "true", "DisableSafeBrowsingProceedAnyway": "false", "DeviceAllowNewUsers": "true", "DevicePowerAdaptiveChargingEnabled": "true", "DeviceGuestModeEnabled": "true", "DeviceUnaffiliatedCrostiniAllowed": "true", "VirtualMachinesAllowed": "true", "CrostiniAllowed": "true", "DefaultCookiesSetting": "1", "VmManagementCliAllowed": "true", "WifiSyncAndroidAllowed": "true", "DeveloperToolsDisabled": "false, "DeveloperToolsAvailability": "1", "UserBorealisAllowed": "true", "InstantTetheringAllowed": "true", "NearbyShareAllowed": "true", "PhoneHubAllowed": "true", "LacrosAvailability": "user_choice", "WallpaperImage": null}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"
