#!/bin/bash

printf "\nDownloading nvim...\n\n"
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
printf "\nUncompressing...\n"
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
printf "\nDone\n"

