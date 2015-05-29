#!/usr/bin/env bash

packages=(
    'https://raw.githubusercontent.com/vim-perl/vim-perl/master/syntax/perl6.vim'
    'https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim'
)
for package in "${packages[@]}"
do
    package_path=$(echo "$package" | sed -r 's|.*/([^/]+/[^/]+)|\1|')
    curl -v "$package" > "$package_path"
done
