call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'dikiaap/minimalist'
Plug 'stanangeloff/php.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

if !has('nvim')
  Plug 'noahfrederick/vim-neovim-defaults'
endif

call plug#end()

runtime! /home/bit6tream/.vim/plugged/vim-neovim-defaults/plugin/neovim_defaults.vim

colorscheme minimalist
set background=dark
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
set numberwidth=2
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set mouse=n "Disable mouse

map <C-n> :NERDTreeToggle<CR>
map <C-p> "+p

vnoremap <C-c> "+y

let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-e>'

highlight Visual ctermfg=black ctermbg=white
highlight StatusLine ctermfg=darkred ctermbg=None
highlight StatusLineTerm ctermfg=darkred ctermbg=None
highlight StatusLineTermNC ctermfg=darkred ctermbg=None
highlight StatusLineNC ctermfg=darkred ctermbg=None
highlight Normal ctermbg=None
highlight Comment ctermbg=None
highlight Constant ctermbg=None
highlight Normal ctermbg=None
highlight NonText ctermbg=None
highlight Special ctermbg=None
highlight Cursor ctermbg=None
highlight LineNr ctermbg=None ctermfg=gray
highlight CursorLineNr ctermbg=None ctermfg=white
highlight CursorLine ctermbg=None
highlight All ctermbg=None

autocmd BufWritePost ~/.Xdefaults,~/.Xresources !xrdb %
autocmd BufWritePost ~/.vimrc					source ~/.vimrc
