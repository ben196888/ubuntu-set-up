#!/bin/bash

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
sudo chown -R `whoami`. ~/.config/
# set fish as default shell
chsh -s `which fish`
curl -L http://get.oh-my.fish | fish

# Require logout and re-login
