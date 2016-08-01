#!/usr/bin/env bash

#first commit, not tested
apt update && apt install -y vim

#wget -O ~/.vimrc http://github.com/lucasoman/Conf/raw/master/.vimrc
#wget -O ~/.vimrc https://gist.githubusercontent.com/benmccormick/4e4bc44d8135cfc43fc3/raw/a809bdec8140b0380aecf6462d8e7f3d88c5276f/minimal.vim

cat > ~/.vimrc << EOF
" A minimal vimrc

" Use Vim settings, rather than Vi settings, may be not needed on newer systems.
" (must be first, because it changes other options as a side effect)
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow hidden buffers, don't limit to 1 file per window/split.
set hidden

" nicer highlighting for colors.
color torte
EOF

#TODO permissions?