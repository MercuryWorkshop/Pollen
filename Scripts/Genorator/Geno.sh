clear
echo "######################################"
echo "Welcome To The Pollen Genorator Tool!"
echo "Pollen Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "######################################"
sleep 5
clear

# Questions
echo "1 = true/yes. 2=false/no"
read -p "Be Able To Delete Browser History? " opt1
read -p "Be Able To Browser As Guest? " opt2
read -p "Enable Developer Tools? " opt3
read -p "Allow Multiple Users? " opt4
read -p "Stop Automatic Updates? " opt5
read -p "Enable Devmode? " opt6
read -p "Enable Task Manager? " opt7
read -p "Enable Incognito Mode? " opt8
read -p "Unblock All Site? " opt9
read -p "Unblock All Extensions? " opt10
clear

# Logic
pollen=""
if [ "$opt1" == "1" ]; then
  pollen="{\"AllowDeletingBrowserHistory\": { \"value\": false },"
elif [ "$opt1" == "2" ]; then
  pollen="{\"AllowDeletingBrowserHistory\": { \"value\": false },"
fi

if [ "$opt2" == "1" ]; then
  pollen+="\"BrowserGuestModeEnabled\": { \"value\": true }, \"DeviceGuestModeEnabled\": { \"value\": true },"
elif [ "$opt2" == "2" ]; then
  pollen+="\"BrowserGuestModeEnabled\": { \"value\": false }, \"DeviceGuestModeEnabled\": { \"value\": false },"
fi

if [ "$opt3" == "1" ]; then
  pollen+="\"DeveloperToolsAvailability\": { \"value\": 1 },"
elif [ "$opt3" == "2" ]; then
  pollen+="\"DeveloperToolsAvailability\": { \"value\": 0 },"
fi

if [ "$opt4" == "1" ]; then
  pollen+="\"DeviceAllowNewUsers\": { \"value\": true },"
elif [ "$opt4" == "2" ]; then
  pollen+="\"DeviceAllowNewUsers\": { \"value\": false },"
fi

if [ "$opt5" == "1" ]; then
  pollen+="\"DeviceAutoUpdateDisabled\": { \"value\": true },"
elif [ "$opt5" == "2" ]; then
  pollen+="\"DeviceAutoUpdateDisabled\": { \"value\": false },"
fi

if [ "$opt6" == "1" ]; then
  pollen+="\"DeviceBlockDevmode\": { \"value\": false },"
elif [ "$opt6" == "2" ]; then
  pollen+="\"DeviceBlockDevmode\": { \"value\": true },"
fi

if [ "$opt7" == "1" ]; then
  pollen+="\"TaskManagerEndProcessEnabled\": { \"value\": true },"
elif [ "$opt7" == "2" ]; then
  pollen+="\"TaskManagerEndProcessEnabled\": { \"value\": false },"
fi

if [ "$opt8" == "1" ]; then
  pollen+="\"IncognitoModeAvailability\": { \"value\": 1 },"
elif [ "$opt8" == "2" ]; then
  pollen+="\"IncognitoModeAvailability\": { \"value\": 0 }"
fi

if [ "$opt9" == "1" ]; then
  pollen+="\"URLAllowlist\": { \"value\": [\"*\"] }, \"URLBlocklist\": { \"value\": [\"\"] },"
elif [ "$opt9" == "2" ]; then
  pollen+=""
fi

if [ "$opt10" == "1" ]; then
  pollen+="\"ExtensionInstallAllowlist\": { \"value\": [\"*\"] }, \"ExtensionInstallBlocklist\": { \"value\": [\"\"] }}"
elif [ "$opt10" == "2" ]; then
  pollen+="}"
fi

# Write
sudo echo "$pollen" > pollen.json
echo "Custom User Policy Has Been Created (File Name: pollen.json)!"
