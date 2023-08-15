set nu
set ai
set expandtab
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set encoding=utf-8
set guicursor=

call plug#begin('~/.local/share/nvim/site/plugin')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

call plug#end()

set background=dark
set clipboard=unnamedplus

autocmd VimEnter * colorscheme gruvbox
