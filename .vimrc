" VBUNDLE
set nocompatible                    " required
filetype off                        " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " required
Plugin 'chase/vim-ansible-yaml'
Plugin 'flazz/vim-colorschemes'

call vundle#end()                   " required
filetype plugin indent on           " required

" CUSTOM

" Colors
set background=dark                 " dark | light
colorscheme solarized               " solarized theme
syntax enable                       " enable syntax processing

" Tabs & Spaces
set tabstop=4                       " show existing tab with 4 spaces width
set shiftwidth=4                    " when indenting with '>', use 4 spaces width
set expandtab                       " convert tabs to spaces

" UI Config
set number                          " show line numbers
set showcmd                         " show command in bottom bar
set cursorline                      " highlight current line
set colorcolumn=80                  " highlight column 80

" Search Options
set hlsearch                        " enable search highlighting
set ignorecase                      " ignore case when searching

" enable mouse scrolling
set mouse=a
