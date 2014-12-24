#!/bin/bash --
# Remove existing files from home directory.
rm --recursive ~/.bash_profile ~/.bashrc ~/.vim ~/.vimrc ~/.my.cnf

# Link to the repository for easy upgrades.
ln --symbolic $PWD/.bash_profile.sh ~/.bash_profile
