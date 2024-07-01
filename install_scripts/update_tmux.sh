#!/bin/bash
TMUX_RELEASE_DIR=".tmux_release"
TMUX_TAG_NAME=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.tag_name')
TMUX_FILE=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.assets | .[].name')
TMUX_NAME= echo $TMUX_FILE | cut -c 1-8

echo $TMUX_FILE
echo $TMUX_NAME

curl -LO https://github.com/tmux/tmux/releases/download/$TMUX_TAG_NAME/$TMUX_FILE

if [ -d .tmux_release ]
then
	rm -rf $TMUX_RELEASE_DIR
fi

mkdir $TMUX_RELEASE_DIR

printf "\nExtracting tmux...\n"
tar -xf $TMUX_FILE -C $TMUX_RELEASE_DIR 
cd $TMUX_RELEASE_DIR/$TMUX_NAME

printf "\nConfigure and install...\n"
./configure && make
sudo make install
cd ..
rm -rf $TMUX_RELEASE_DIR 
rm $TMUX_FILE 

printf "Dont forget about tpm: git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

