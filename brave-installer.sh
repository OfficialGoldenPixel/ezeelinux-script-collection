read -p "This script only works on Ubuntu/Debian or any of it's derivatives, and, this script requires curl, Do you want to continue? [y/n]: " $YNQUESTION

if [[ "$YNQUESTION" == "y" ]]; then
  sudo apt install apt-transport-https curl
  curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
  echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update
  sudo apt install brave-browser
  echo "All done!"
else
  echo "Cancelled."
fi
