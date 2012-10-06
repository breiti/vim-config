set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'spf13/vim-colors'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/sessionman.vim'
Bundle 'tpope/vim-fugitive'

" Pretty colors...
colorscheme solarized

" Pretty font...
" Get it from: https://github.com/adobe/Source-Code-Pro
set guifont=Source\ Code\ Pro:h11

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

filetype plugin indent on

" Turn on syntax highlighting
syntax on
autocmd VimEnter * :if argc() is 0 | execute ":SessionList" | endif
