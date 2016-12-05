set encoding=utf-8

"activate pathogen
execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
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
"ignore case in search
set ignorecase
"show matches as we type
set incsearch
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

"map git commands
map <leader>b :Gblame<cr>
map <leader>l :!clear && git log -p %<cr>
map <leader>d :!clear && git diff %<cr>

"map Silver Searcher
map <leader>a :Ag!<space>

"clear the command line and search highlighting
noremap <C-l> :nohlsearch<CR>

"CtrlP
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
"use silver searcher for ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"tabs not spaces
"set noexpandtab
"set tabstop=4
"set shiftwidth=4

"spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

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
set history=500

"configure hotkeys for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"set rich colors
set t_Co=256

"ignore syntax check using syntastic for java files (too heavy)
let g:syntastic_ignore_files = ['\.java$']

map <C-n> :NERDTreeToggle<CR>

map <C-right> <ESC>:bn<CR>
map <C-left> <ESC>:bp<CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

nmap ic :s/^/#/g<CR>:let @/ = ""<CR>
nmap rc :s/^#//g<CR>:let @/ = ""<CR>

"shortcut for no highlight
nnoremap <leader><space> :noh<CR>

"quick search in current buffer
nnoremap <leader>s :g//#<left><left>
