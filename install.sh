#!/bin/bash

# system wide editor
export EDITOR=vim
echo "export EDITOR=vim" >> ~/.bashrc

# install libevent, dependency of tmux
sudo apt-get update
sudo apt-get install build-essential libevent-2.0-5 libevent-dev libncurses5-dev autoconf automake m4 libtool perl pkg-config

# install tmux
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
