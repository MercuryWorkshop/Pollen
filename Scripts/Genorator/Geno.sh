#!/bin/bash
echo "######################################"
echo "Welcome To The Pollen Genorator Tool!"
echo "Pollen Developer: Scarat3k"
echo "Cotton Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "######################################"
sleep 7
clear

# Questions
echo "1 = true  /yes. 2=false / no"
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

# Logic
pollen = ""
if [ "$opt1" == "1" ]; then
  pollen="{ "
elif [ "$opt1" == "2" ]; then
  pollen="{ "
fi

if [ "$opt2" == "1" ]; then
  pollen+=""
elif [ "$opt2" == "2" ]; then
  pollen+=""
fi

if [ "$opt3" == "1" ]; then
  pollen+=""
elif [ "$opt3" == "2" ]; then
  pollen+=""
fi

if [ "$opt4" == "1" ]; then
  pollen+=""
elif [ "$opt4" == "2" ]; then
  pollen+=""
fi

if [ "$opt5" == "1" ]; then
  pollen+=""
elif [ "$opt5" == "2" ]; then
  pollen+=""
fi

if [ "$opt6" == "1" ]; then
  pollen+=""
elif [ "$opt6" == "2" ]; then
  pollen+=""
fi

if [ "$opt7" == "1" ]; then
  pollen+=""
elif [ "$opt8" == "2" ]; then
  pollen+=""
fi

if [ "$opt9" == "1" ]; then
  pollen+=""
elif [ "$opt9" == "2" ]; then
  pollen+=""
fi

if [ "$opt10" == "1" ]; then
  pollen+=" }"
elif [ "$opt10" == "2" ]; then
  pollen+=" }"
fi

# Write
echo "$pollen" > pollen.json
