#!/bin/bash

# Set env
USERNAME=`whoami`

# update pkg
sudo apt-get update -yq

# install git vim
sudo apt-get install -yq git vim

# setup git config
git config --global user.email "ben196888@gmail.com"
git config --global user.name "ben196888"
git config --global push.default simple

# nodejs
sudo apt-get install -yq nodejs npm
# setup node
sudo ln -s `which nodejs` /usr/bin/node
# python
sudo apt-get install -yq python python-pip
# docker
sudo apt-get install -yq docker.io docker-compose

# fish
sudo apt-get install -yq fish
sudo chown -R $USERNAME. ~/.config/
# fisherman, a plugin manager for fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
# bass
fisher edc/bass
# set fish as default shell
sudo chsh -s `which fish` $USERNAME
curl -L http://get.oh-my.fish | fish

# Require logout and re-login
