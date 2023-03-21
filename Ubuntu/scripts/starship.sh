#!/bin/sh

curl -sS https://starship.rs/install.sh | sudo sh

echo 'eval "$(starship init bash)"' >> ~/.bashrc

source ~/.bashrc