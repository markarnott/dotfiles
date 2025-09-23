#!/bin/sh

# Install and configure for Ubuntu

# starship
curl -sS https://starship.rs/install.sh | sudo sh

echo 'eval "$(starship init bash)"' >> ~/.bashrc

# what about nerd fonts?

# zoxide
sudo apt install zoxide

echo 'eval "$(zoxide init bash)"' >> ~/.bashrc

source ~/.bashrc

# volta
curl https://get.volta.sh | bash

# git 
git config user.name 'Mark Arnott'
git config user.email 209603+markarnott@users.noreply.github.com
