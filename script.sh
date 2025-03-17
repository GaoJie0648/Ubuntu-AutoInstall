# Description: This script is used to get the install script from the github repository and run it
# Repository: https://github.com/GaoJie0648/Ubuntu-AutoInstall.git

# Get the install script from the github repository

# Check the script file is exist or not
if [ ! -d ~/Ubuntu-AutoInstall/ ]; then
    sudo mkdir ~/Ubuntu-AutoInstall/
fi


# Check the script file is exist or not
if [ -f ~/Ubuntu-AutoInstall/docker.sh ]; then
    sudo rm ~/Ubuntu-AutoInstall/docker.sh
fi
sudo wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/docker.sh -P ~/Ubuntu-AutoInstall/

if [ -f ~/Ubuntu-AutoInstall/zerotier.sh ]; then
    sudo rm ~/Ubuntu-AutoInstall/zerotier.sh
fi
sudo wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/zerotier.sh -P ~/Ubuntu-AutoInstall/

if [ -f ~/Ubuntu-AutoInstall/anydesk.sh ]; then
    sudo rm ~/Ubuntu-AutoInstall/anydesk.sh
fi
sudo wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/anydesk.sh -P ~/Ubuntu-AutoInstall/ 

# Run the install script
sudo chmod +x ~/Ubuntu-AutoInstall/docker.sh
sudo chmod +x ~/Ubuntu-AutoInstall/zerotier.sh
sudo chmod +x ~/Ubuntu-AutoInstall/anydesk.sh

sudo bash ~/Ubuntu-AutoInstall/docker.sh
sudo bash ~/Ubuntu-AutoInstall/zerotier.sh
sudo bash ~/Ubuntu-AutoInstall/anydesk.sh
