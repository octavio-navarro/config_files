#!/bin/bash

printf "\nDownloading nvim...\n\n"
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.3/nvim-linux64.tar.gz
#curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
printf "\nUncompressing...\n"
sudo rm -rf /opt/nvim
#sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
printf "\nDone\n"

