#!/bin/bash

# Check if Git installed
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -eq 0 ]; then
	GIT=$(which git)
	printf "\nCloning dotvim directory...\n"
	$GIT clone git@github.com:syrgak/dotvim.git ~/.vim

	printf "\nSymlinking .vimrc...\n"
	ln -s ~/.vim/vimrc ~/.vimrc

	printf "\nInstalling plugins...\n"
	(cd ~/.vim && $GIT submodule init && $GIT submodule update)

	printf "\nAll done!\n"
else
	printf "\nPlease install Git first and re-run the script.\n"
fi
