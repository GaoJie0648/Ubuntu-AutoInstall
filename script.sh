# Description: This script is used to get the install script from the github repository and run it
# Repository: https://github.com/GaoJie0648/Ubuntu-AutoInstall.git

# Get the install script from the github repository

# Check the script file is exist or not
$path = "/etc/Ubuntu-AutoInstall"
$dockerscript = "docker.sh"
$zerotierscript = "zerotier.sh"
$anydeskscript = "anydesk.sh"

if [ ! -d $path ]; then
    mkdir $path
fi

cd $path

# Check the script file is exist or not
if [ -f $dockerscript ]; then
    rm $dockerscript
    wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/docker.sh
fi

if [ -f $zerotierscript ]; then
    rm $zerotierscript
    wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/zerotier.sh
fi

if [ -f $anydeskscript ]; then
    rm $anydeskscript
    wget https://raw.githubusercontent.com/GaoJie0648/Ubuntu-AutoInstall/refs/heads/main/anydesk.sh
fi

# Run the install script
chmod +x $dockerscript
chmod +x $zerotierscript
chmod +x $anydeskscript

./$dockerscript
./$zerotierscript
./$anydeskscript