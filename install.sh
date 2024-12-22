#!/bin/bash

cwd=$(pwd)

mkdir -p ~/tools
cd ~/tools

if [[ ! -d ~/tools/LinkFinder ]]
then
        git clone https://github.com/dark-warlord14/LinkFinder
else
        printf "LinkFinder already present in tools folder...!\n\n"
fi

sudo apt install wget -y

cd LinkFinder

sudo pip3 install -r requirements.txt --break-system-packages
sudo python3 setup.py install --break-system-packages
pip install jsbeautifier --break-system-packages

echo "alias jsscanner='$cwd/script.sh'" >> ~/.zshrc

. ~/.zshrc

echo "All set bro, restart your terminal!"
