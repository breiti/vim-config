set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'spf13/vim-colors'
Bundle 'flazz/vim-colorschemes'

" Pretty colors...
colorscheme solarized

" Pretty font...
set guifont=Source\ Code\ Pro:h11

filetype plugin indent on

" Turn on syntax highlighting
syntax on
