# Configurtion Files

## Dependencies

- jq
- make
- gcc
- libevent-dev
- btyacc
- ncurses-dev
- Agave Nerd Font

## Getting started

- Install the dependencies using the software manager.
- Install fzf using the `install_scripts/install_fzf.sh` file.

## TMUX

- Install tmux using the `install_scripts/update_tmux.sh` script.
- Create a `~/.config/tmux` folder, and copy the `configs/tmux.conf` file.
- To install plugins, type: ctrl+esp -> I

## ZSH

- Install using the software manager
- Ignore the instructions to setup the terminal, and copy the .zshrc file to the home folder.

```bash
sudo apt install zsh
```

- Change the shell:

```bash
chsh -s $(which zsh)
```

- Install complements for zsh:

```bash
sudo apt install zsh-syntax-highlighting zsh-autosuggestions
```

- Copy .zshrc, .fzf.conf, .p10k.zsh, to home

## NVIM

- Use the update_nvim to install the newest version.
- Copy the `config/nvim` folder into `~/.config/nvim/`.

## References

- NVIM: https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf
- TMUX: https://www.youtube.com/watch?v=DzNmUNvnB04&t=504s
- ZSH: https://www.youtube.com/watch?v=ud7YxC33Z3w&t=4s

