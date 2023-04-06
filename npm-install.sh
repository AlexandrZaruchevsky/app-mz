DIR_CURRENT=$(pwd)
DIR_DOWNLOAD="$DIR_CURRENT/download"
sudo apt-get -y update
sudo apt-get -y install curl
cd $DIR_DOWNLOAD
curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
bash $DIR_DOWNLOAD/nodesource_setup.sh
sudo apt-get -y install nodejs
sudo apt-get -y update
sudo apt-get -y install git