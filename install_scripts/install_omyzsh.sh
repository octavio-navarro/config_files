if [ ! -d ~/.fzf ]; then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
fi
cd ~/.fzf
git pull
~/.fzf/install
