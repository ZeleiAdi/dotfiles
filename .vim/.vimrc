set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugin

set number

set expandtab
set shiftwidth=2
set softtabstop=2

colorscheme solarized

set ignorecase smartcase
set showmatch
set cursorline
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

set guicursor+=a:blinkon0 "Disable all blinking

set guifont=Source\ Code\ Pro\ 11
