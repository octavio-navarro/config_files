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

## oh-my-posh

```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
```

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

- Copy .zshrc, .fzf.conf to home
- Copy zen.toml to ~/.configs/ohmyposh/

## NVIM

- Use the update_nvim to install the newest version.
- Copy the `config/nvim` folder into `~/.config/nvim/`.

### Windows

- We can use choco to install nvim: `choco install neovim`
- In windows, copy the folder to `%USERPROFILE%\AppData\Local\nvim`

## References

- ZSH Profile: https://www.youtube.com/watch?v=9U8LCjuQzdc
- ohmyposh docs: https://ohmyposh.dev/docs
- NVIM: https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf
- TMUX: https://www.youtube.com/watch?v=DzNmUNvnB04&t=504s
- ZSH: https://www.youtube.com/watch?v=ud7YxC33Z3w&t=4s
- NVIM+C++: https://www.youtube.com/watch?v=lsFoZIg-oDs
- NVIM+Nodejs: https://www.youtube.com/watch?v=CVCBHHFXWNE&t=416s
- NVIM+Python: https://www.youtube.com/watch?v=4BnVeOUeZxc
- NVIM+Go: https://www.youtube.com/watch?v=i04sSQjd-qo

