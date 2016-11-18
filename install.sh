#!/bin/bash

# update packages
sudo apt-get update

# system wide editor
export EDITOR=vim
echo "export EDITOR=vim" >> ~/.bashrc

# install zsh
sudo apt-get zsh
# install oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install libevent, dependency of tmux
sudo apt-get install build-essential libevent libevent-dev libncurses5-dev autoconf automake m4 libtool perl pkg-config

# build & install tmux from source
cd ~
rm -rf tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo make install

# quick tmux config
cd ~
rm -rf .tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp -f .tmux/.tmux.conf.local .
