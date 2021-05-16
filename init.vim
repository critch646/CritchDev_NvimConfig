" ============================================================================
" Vim-plug initialization
" ============================================================================
let vim_plug_just_installed = 0
let vim_plug_path = expand('$HOME/.config/nvim/autoload/plug.vim')
if !filereadable(vim_plug_path)
  echo "Installing Vim-plug..."
  silent !mkdir -p $HOME/.config/nvim/autoload
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
  :execute 'source '.fnameescape(vim_plug_path)
endif

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

" Theme
set background=dark
set termguicolors
let g:quantum_black=1
colorscheme quantum
