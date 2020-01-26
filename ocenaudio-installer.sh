#!/bin/bash

# Script to download and install Ocenaudio.

# Get Gdebi if not already installed:

dpkg -l | grep -qw gdebi || sudo apt-get install -yyq gdebi

echo "Creating temporary directory..."
mkdir /tmp/oa-install-tmp
pushd /tmp/oa-install-tmp
echo "Downloading latest version of Ocenaudio..."
wget http://www.ocenaudio.com/downloads/index.php/ocenaudio_debian9_64.deb
echo "Installing ocenaudio..."
sudo gdebi -n ocenaudio_debian9_64.deb
popd
echo "Removing temporary directory..."
rm -rf /tmp/oa-install-tmp
echo "..Done!"
