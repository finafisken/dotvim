#!/bin/bash

# Check if Git installed
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?

TIMESTAMP=$(date "+%Y.%m.%d-%H.%M.%S")
BKP=.bkp

function backupIfAlreadyExists {
	TARGET=$1
	if [ -h ${TARGET} ]; then
		printf "\nRemoving ${TARGET} symlink...\n"
		rm -v ${TARGET}
	elif [ -d ${TARGET} ]; then
		printf "\nBacking up existing ${TARGET} directory...\n"
		mv -v ${TARGET} ${TARGET}${BKP}${TIMESTAMP}
	elif [ -f ${TARGET} ]; then
		printf "\nBacking up existing ${TARGET} file...\n"
		mv -v ${TARGET} ${TARGET}${BKP}${TIMESTAMP}
	fi
}

if [ $GIT_IS_AVAILABLE -eq 0 ]; then
	GIT=$(which git)

	### Vim ###
	DOTVIM=~/.vim
	DOTVIMRC=~/.vimrc
	printf "\nCloning dotvim directory...\n"
	backupIfAlreadyExists ${DOTVIM}
	$GIT clone https://github.com/syrgak/dotvim.git ${DOTVIM}

	printf "\nSymlinking ${DOTVIMRC}...\n"
	backupIfAlreadyExists ${DOTVIMRC}
	ln -s ${DOTVIM}/vimrc ${DOTVIMRC}

	printf "\nInstalling plugins...\n"
	(cd ${DOTVIM} && $GIT submodule init && $GIT submodule update)


	### Dotfiles ###
	DOTFILES=~/.dotfiles
	printf "\nCloning dotfiles directory...\n"
	backupIfAlreadyExists ${DOTFILES}
	$GIT clone https://github.com/syrgak/dotfiles.git ${DOTFILES}


	### Tmux ###
	DOTTMUX=~/.tmux.conf

	printf "\nSymlinking ${DOTTMUX}...\n"
	backupIfAlreadyExists ${DOTTMUX}
	ln -s ${DOTFILES}/tmux.conf ${DOTTMUX}


	printf "\nYou are all set!\n"
else
	printf "\nPlease install Git first and re-run the script.\n"
fi
