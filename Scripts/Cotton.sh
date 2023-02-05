echo "###################################################"
echo "Welcome To Cotton, The Automotic Pollen Setup Tool!"
echo "Pollen Developer: Scarat3k"
echo "Cotton Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "###################################################"
sleep  7
clear

mkdir pollen
cd pollen
clear

sudo curl https://pollen.scarat3k.me/scripts/pollen/pollen.sh
sudo curl https://pollen.scarat3k.me/scripts/genorator/geno.sh
clear

sudo chmod +x pollen.sh
sudo chmod +x geno.sh
clear

sudo ./geno.sh
clear

sudo ./pollen.sh
clear