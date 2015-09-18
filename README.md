##Installation instructions

### Automatic
```
curl -s https://raw.githubusercontent.com/syrgak/dotvim/master/install.sh | bash
```
(or shorter)
```
curl -Ls https://goo.gl/nTXUtf | bash
```

### Manual
```
git clone git@github.com:syrgak/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim && git submodule init && git submodule update
```

### List of plugins
* CtrlP (fuzzy search)
* NerdTree (file explorer)
* Syntastic (syntax)
* Fugitive (Git)
* Surround
* Airline (status bar)
