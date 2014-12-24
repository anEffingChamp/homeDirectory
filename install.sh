#!/bin/bash --
# Remove existing files from home directory.
rm --recursive ~/.bash_profile ~/.bashrc ~/.vim ~/.vimrc ~/.my.cnf

# Link to the repository for easy upgrades.
aryLinks=( 'bash_profile' 'vimrc' 'my.cnf' 'gitTemplate' 'gitConfig'
	'gitignore' 'bashConfig' '.bower_components' 'bin' )
for szLink in "${aryLinks[@]}"; do
	ln --symbolic $PWD/$szLink ~/.$szLink
done
