#!/bin/bash

# system wide editor
export EDITOR=vim
echo "export EDITOR=vim" >> ~/.bashrc

# install libevent, dependency of tmux
sudo apt-get install libevent-2.0-5

# install tmux
cd ~
rm -rf tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make

# quick tmux config
cd ~
rm -rf .tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp -f .tmux/.tmux.conf.local .
