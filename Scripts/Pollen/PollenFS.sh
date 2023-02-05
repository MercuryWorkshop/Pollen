clear
echo "######################################"
echo "Welcome To PollenFS!"
echo "Pollen Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "######################################"
sleep 5
clear

mkdir -p /etc/opt/chrome/policies/managed
cat pollen.json > /etc/opt/chrome/policies/managed/policy.json
clear

echo "PollenFS Has Been Successfully Applied!"