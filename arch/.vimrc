call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'

if !has('nvim')
  Plug 'noahfrederick/vim-neovim-defaults'
endif

Plug 'dikiaap/minimalist'

call plug#end()

runtime! /home/null/.vim/plugged/vim-neovim-defaults/plugin/neovim_defaults.vim

colorscheme minimalist
syntax on

set nocompatible
set t_Co=256
set nobackup
set termencoding=utf-8
set history=50
set incsearch
set hidden
set ic
set shortmess+=I
set number relativenumber
set tabstop=3
set number cursorline
set numberwidth=2
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

map <C-n> :NERDTreeToggle<CR>

highlight Visual ctermfg=black
highlight StatusLine ctermfg=red ctermbg=None
highlight StatusLineTerm ctermfg=red ctermbg=None
highlight StatusLineTermNC ctermfg=red ctermbg=None
highlight StatusLineNC ctermfg=red ctermbg=None
highlight Normal ctermbg=None
highlight Comment ctermbg=None
highlight Constant ctermbg=None
highlight Normal ctermbg=None
highlight NonText ctermbg=None
highlight Special ctermbg=None
highlight Cursor ctermbg=None
highlight LineNr ctermbg=None cterm=bold ctermfg=gray
highlight CursorLineNr ctermbg=None ctermfg=white
highlight CursorLine ctermbg=None

autocmd BufWritePost ~/.Xdefaults,~/.Xresources !xrdb %
