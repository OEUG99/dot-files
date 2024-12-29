" Personal settings
set relativenumber
syntax on
set encoding=utf-8
set fileencoding=utf-8
set showmatch
set mouse=a
set clipboard=unnamedplus

" Show hidden files in file navigation
set wildmenu
set wildmode=longest:list,full

"  keybinds
" Toggle NERDTree
let mapleader=" "


call plug#begin()

" List your plugins here
Plug 'sheerun/vim-polyglot'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/fresh2dev/zellij.vim'
Plug 'preservim/nerdtree'

call plug#end()


