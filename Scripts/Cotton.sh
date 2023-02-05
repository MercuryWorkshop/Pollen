clear
echo "###################################################"
echo "Welcome To Cotton, The Automatic Pollen Setup Tool!"
echo "Pollen Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "###################################################"
sleep 5
clear

mkdir pollen
cd pollen
clear

sudo curl https://pollen.scarat3k.me/scripts/genorator/Geno.sh
sudo curl https://pollen.scarat3k.me/scripts/pollen/Pollen.sh
clear

sudo chmod +x Pollen.sh
sudo chmod +x Geno.sh
clear

sudo ./Geno.sh
clear

sudo ./Pollen.sh
clear
