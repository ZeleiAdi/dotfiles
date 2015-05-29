set nocompatible       " We're running Vim, not Vi!
filetype plugin indent on

syntax on              " Enable syntax highlighting
colorscheme solarized

set shortmess+=I

set number
set ruler

set cursorline

set linebreak
map j gj
map k gk

set expandtab          " Always uses spaces instead of tabs
set shiftwidth=2       " An indent is 2 spaces
set softtabstop=2      " Insert 2 spaces when tab is pressed

set noswapfile
set undofile

set ignorecase
set smartcase

set hlsearch
set incsearch
set showmatch

map Y y$
