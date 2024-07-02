#!/bin/bash
TMUX_RELEASE_DIR=".tmux_release"
TMUX_TAG_NAME=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.tag_name')
TMUX_FILE=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.assets | .[].name')
TMUX_NAME=$(echo $TMUX_FILE | cut -c 1-8)

echo "TMUX Tag name: $TMUX_TAG_NAME"
echo "TMUX File: $TMUX_FILE"
echo "TMUX NAME: $TMUX_NAME"

if [ ! -f $TMUX_FILE ]
then
	echo "Downloading from: https://github.com/tmux/tmux/releases/download/$TMUX_TAG_NAME/$TMUX_FILE\n"

	#wget https://github.com/tmux/tmux/releases/download/$TMUX_TAG_NAME/$TMUX_FILE
	curl -LO https://github.com/tmux/tmux/releases/download/$TMUX_TAG_NAME/$TMUX_FILE
fi

if [ ! -f $TMUX_FILE ]
then
	echo "File failed to download!"
	exit 0
fi

if [ -d .tmux_release ]
then
	rm -rf $TMUX_RELEASE_DIR
fi

mkdir $TMUX_RELEASE_DIR

printf "\nExtracting tmux...\n"
tar -xf $TMUX_FILE -C $TMUX_RELEASE_DIR 

echo "Entering $TMUX_RELEASE_DIR/$TMUX_NAME\n"
cd $TMUX_RELEASE_DIR/$TMUX_NAME

printf "\nConfigure and install...\n"
./configure && make
sudo make install
cd ..
rm -rf $TMUX_RELEASE_DIR 
rm $TMUX_FILE 

printf "Dont forget about tpm: git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

