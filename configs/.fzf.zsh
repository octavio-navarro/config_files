# Setup fzf
# ---------
if [[ ! "$PATH" == */home/balmung/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/balmung/.fzf/bin"
fi

source <(fzf --zsh)
