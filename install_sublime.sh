#!/bin/bash
# https://www.sublimetext.com/docs/linux_repositories.html#apt
# https://www.sublimemerge.com/docs/linux_repositories#apt

source ./install_x11.sh

# Install the GPG key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# Install https sources
sudo apt-get install apt-transport-https
# Add sublime stable channel
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# Insytall sublime
sudo apt-get update
sudo apt-get install sublime-text sublime-merge
