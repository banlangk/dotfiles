set encoding=utf-8
set mouse=a
set shiftwidth=4
set softtabstop=4
set tabstop=4

set list
set number
set relativenumber
set showcmd
set termguicolors

set hidden
set hlsearch
set ignorecase
set smartcase

set belloff=all
set noshowmode
set shortmess+=I

let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"

call plug#begin()

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'

Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'

Plug 'girishji/vimcomplete'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

call plug#end()

runtime macros/sandwich/keymap/surround.vim

colorscheme catppuccin_latte
let g:lightline = { 'colorscheme': 'catppuccin_latte' }

let g:vimcomplete_tab_enable = 1

let mapleader = ' '

nnoremap Q <Nop>
nnoremap <silent> <leader>P :put!=system('win32yank.exe -o --lf')<CR>
nnoremap <silent> <leader>p :put =system('win32yank.exe -o --lf')<CR>
nnoremap <silent> <leader>y :call system('win32yank.exe -i --crlf', @")<CR>

map <leader>S <Plug>Sneak_S
map <leader>s <Plug>Sneak_s
