#!/bin/bash

# system wide editor
export EDITOR=vim
echo "export EDITOR=vim" >> ~/.bashrc

# quick tmux config
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
