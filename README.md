# Configurtion Files

## Dependencies

- jq
- make
- gcc
- libevent-dev
- btyacc
- ncurses-dev
- Agave Nerd Font

# Overall instructions

- Install the dependencies.
- Install fzf. 
- Install zsh using the software manager.
- Ignore the instructions to setup the terminal, and copy the .zshrc file to the home folder.
- Install tmux using the update_tmux script.
- Create a .config/tmux folder, and copy the tmux.conf file.

## ZSH

- Install using the software manager

'''bash
sudo apt install zsh
'''

- Change the shell:

'''bash
chsh -s $(which zsh)
'''

- Install complements for zsh:

'''bash
sudo apt install zsh-syntax-highlighting zsh-autosuggestions
'''

## NVIM

- Use the update_nvim to install the newest version.
