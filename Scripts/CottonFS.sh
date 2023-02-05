clear
echo "#######################################################"
echo "Welcome To CottenFS, The Automatic PollenFS Setup Tool!"
echo "Pollen Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "#######################################################"
sleep 5
clear

mkdir pollen
cd pollen
clear

sudo curl https://pollen.scarat3k.me/scripts/genorator/Geno.sh
sudo curl https://pollen.scarat3k.me/scripts/pollen/PollenFS.sh
clear

sudo chmod +x pollenFS.sh
sudo chmod +x geno.sh
clear

sudo ./geno.sh
clear

sudo ./pollenFS.sh
