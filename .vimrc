set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'trusktr/seti.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'wookiehangover/jshint.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colors and theme, font
set t_Co=256
" colorscheme seti
colorscheme badwolf
" colorscheme gruvbox
set guifont=Monaco:h11:cANSI
set statusline=2
" jsBeautify
map <c-f> :call JsBeautify()<cr>

" set lines=40 columns=100

" map cut & paste to what they bloody should be
vnoremap <C-c> "+y
vnoremap <C-x> "+x
vnoremap <C-v> "*p

"autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

map <c-f> :call JsBeautify()<cr>

set tabstop=2       " number of columns for a tab
set shiftwidth=2    " number of columns for reindent operations
set shiftround      " use multiple of shiftwidth when indenting with '<'
set expandtab       " convert tabs to spaces
set autoindent

set nowrap          " don't wrap lines
set number          " show line numbers
set showmatch       " show matching parens

set ignorecase      " ignore case for search
set smartcase       " ignore case if search is all lowercase, case-senstitive otherwise
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type

set history=1000
set undolevels=1000
set visualbell
set noerrorbells
