# Description: Install AnyDesk

# Check if AnyDesk is already installed
if command -v anydesk &> /dev/null; then
  echo "AnyDesk is already installed"
  exit 0
fi

# Install AnyDesk

# Add the AnyDesk GPG key
sudo apt update
sudo apt install ca-certificates curl apt-transport-https -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o /etc/apt/keyrings/keys.anydesk.com.asc
sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc

# Add the AnyDesk apt repository
echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] https://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# Update apt caches and install the AnyDesk client
sudo apt update
sudo apt install anydesk -y
