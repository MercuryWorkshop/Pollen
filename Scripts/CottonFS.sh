echo "#####################################################"
echo "Welcome To CottonFS, The Automotic PollenFS Setup Tool!"
echo "PollenFS Developer: Scarat3k"
echo "CottonFS Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "#####################################################"
sleep  7
clear

mkdir pollen
cd pollen
clear

sudo curl https://pollen.scarat3k.me/scripts/pollen/pollenFS.sh
sudo curl https://pollen.scarat3k.me/scripts/genorator/geno.sh
clear

sudo chmod +x pollenFS.sh
sudo chmod +x geno.sh
clear

sudo ./geno.sh
clear

sudo ./pollenFS.sh