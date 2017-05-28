set nocompatible

set hidden

filetype plugin indent on

syntax enable

set shortmess+=I

set laststatus=2

set linebreak

set expandtab
set shiftwidth=2
set softtabstop=2

set ignorecase smartcase
set incsearch
set hlsearch

set undofile

silent! call mkdir($HOME . '/.vim/undo', 'p')
set undodir=~/.vim/undo

set showmatch

set backspace=indent,eol,start
set nojoinspaces

set wildmode=longest,list
map Y y$

set title

set noeb vb t_vb=

set tags=./tags;,tags;

call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-perl/vim-perl', { 'for': 'perl' }
Plug 'lambdatoast/elm.vim', { 'for': 'elm' }

Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'

Plug 'w0rp/ale'

Plug 'altercation/vim-colors-solarized'

call plug#end()

colorscheme solarized
set background=dark

set statusline=%<%f\ %h%m%r%=%{ALEGetStatusLine()}\ %-14.(%l,%c%V%)\ %P

autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e | $
autocmd FileType ruby setlocal iskeyword+=?,!
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

cmap w!! w !sudo tee % >/dev/null

let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_column_always = 1
