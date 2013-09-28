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
Bundle 'tpope/vim-dispatch'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/bufkill.vim'

" Pretty colors...
colorscheme solarized

" Pretty font...
" Get it from: https://github.com/adobe/Source-Code-Pro
set guifont=Source\ Code\ Pro:h11

set guioptions=  "remove menu-,tool-, and scrollbars

filetype plugin indent on

" Turn on syntax highlighting
syntax on
autocmd VimEnter * :if argc() is 0 | execute ":SessionList" | endif

set encoding=utf-8
set laststatus=2

set number

" Store a ton of history (default is 20)
set history=1000

" Allow buffer switching without saving
set hidden

" Show matching brackets/parenthesis
set showmatch

" Find as you type
set incsearch

" Highlight search terms
set hlsearch

" Case insensitive search...
set ignorecase
" ...but make it case sensitive when typing upper-case.
set smartcase

" Highlight tabs and trailing whitespace
set list
set listchars=tab:→\ ,trail:.

let mapleader = ","

" <leader>e: Edit another file in same directory as the current file
if has("unix")
    map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
else
    map <leader>e :e <C-R>=expand("%:p:h") . "\\" <CR>
endif
