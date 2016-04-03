set nocompatible

set hidden

filetype plugin indent on

syntax enable

set shortmess+=I

set laststatus=2

set ruler

set linebreak

set expandtab
set shiftwidth=2
set softtabstop=2

set ignorecase smartcase
set incsearch
set hlsearch

set undofile
set undodir=~/.vim/undo

set showmatch

set backspace=indent,eol,start

set wildmode=longest,list
map Y y$

set title

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/vim-ruby/vim-ruby'
Plug 'https://github.com/vim-perl/vim-perl'

call plug#end()

colorscheme solarized
set background=dark

autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e | $
autocmd FileType ruby setlocal iskeyword+=?,!

set tags=./tags;,tags;
