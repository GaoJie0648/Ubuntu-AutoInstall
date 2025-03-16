# Description: Install ZeroTier One

# Check if ZeroTier One is already installed
if command -v zerotier-cli &> /dev/null; then
  echo "ZeroTier One is already installed"
  exit 0
fi

# Install ZeroTier One
curl -s https://install.zerotier.com | sudo bash