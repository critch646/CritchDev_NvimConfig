" **********************
" Dev Zeke's NVim init.vim Config
" **********************

" Plugins
call plug#begin('~/.config/nvim/plugged')     


" General Settings
set encoding=UTF-8
syntax on
set autoread wildmode=longest,list,full
set spell spelllang=en_ca

" New window settings
set splitbelow
set splitright

" Search
set hls is ic

" Tabs, spacing, and indentation
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Numbers
set nu
set nowrap
set relativenumber

" Scrolling
set scrolloff=3

" Clear search results
nnoremap <silent> // :noh<CR>
