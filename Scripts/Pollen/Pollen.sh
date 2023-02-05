clear
echo "######################################"
echo "Welcome To Pollen!"
echo "Pollen Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "######################################"
sleep 5
clear

if [[ $(id -u) != 0 ]]; then
	echo "Error, Not Rooted. Please Run In Sudo!"
	exit
fi

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
cat pollen.json > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc
clear

echo "Pollen Has Been Successfully Applied!"