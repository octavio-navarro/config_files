#!/bin/bash

printf "\nDownloading nvim...\n\n"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
printf "\nUncompressing...\n"
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
printf "\nDone\n"

