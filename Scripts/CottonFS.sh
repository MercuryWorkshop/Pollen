echo "#####################################################"
echo "Welcome To CottonFS, The Automotic PollinFS Setup Tool!"
echo "PollinFS Developer: Scarat3k"
echo "CottonFS Developer: Scarat3k"
echo "User Policy Editor Developer: OlyB"
echo "Discovered The Overlook: Rafflesia"
echo "Provided User Policy For Base: Ethonic"
echo "#####################################################"
sleep  7
clear

mkdir pollin
cd pollin
clear

sudo curl https://pollin.scarat3k.me/scripts/pollin/pollinFS.sh
sudo curl https://pollin.scarat3k.me/scripts/genorator/geno.sh
sudo curl https://pollin.scarat3k.me/scripts/genorator/base.json
clear

sudo chmod +x pollinFS.sh
sudo chmod +x geno.sh
clear

sudo ./geno.sh
clear

sudo ./pollinFS.sh