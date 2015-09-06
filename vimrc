"activate pathogen
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

"disable arrow keys
nmap <up> <NOP>
nmap <down> <NOP>
nmap <left> <NOP>
nmap <right> <NOP>

"set leader key
let mapleader = ','

set smartindent
set hlsearch
"show line numbers
set number
set autoindent
set showcmd
"autoreload changed files
set autoread
set smartcase
"always show status line
set laststatus=2
"disable audio bell
set visualbell

"open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"tabs not spaces
set noexpandtab
set tabstop=4
set shiftwidth=4

"autocomplete with dictionary words when spell check is on
set complete+=kspell

"always use vertical diffs
set diffopt+=vertical

"directory for backup files
set backupdir=/tmp
"directory for swap files
set directory=/tmp

"undofile
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

"configure hotkeys for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"set rich colors
set t_Co=256
