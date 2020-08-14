autocmd! bufwritepost .vimrc source % "autoreload vimrc
"----------------------Plugins----------
"AutoInstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugplugins')
"---Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dylanaraps/wal.vim'
"---Async: Linting, Complete & Interactive
Plug 'valloric/youcompleteme'
Plug 'skywind3000/asyncrun.vim'
Plug 'w0rp/ale'
"Plug 'eslint/eslint'
"---Files,Panes and Git stuff
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"---Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"---Lang specific
Plug 'pangloss/vim-javascript'
Plug 'machakann/vim-highlightedyank'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

set clipboard=unnamedplus

"-------------Swap-Files------
"all disabled
set nobackup
set nowritebackup
set noswapfile

"--------/Search------------
set hlsearch
set incsearch "start searching without enter
set ignorecase
set smartcase
"Clear Search with ctrl + l
noremap <C-l> :nohl<CR>
vnoremap <C-l> :nohl<CR>
inoremap <C-l> :nohl<CR>
set number  " show line numbers
set list
set listchars=tab:>.,trail:-,extends:#,nbsp:.
set linebreak  "break on end word
set scrolloff=10 "Automove 10 lines above/below

set autoread "updates file if edited by other source
filetype on
filetype plugin indent on
syntax on

set backspace=indent,eol,start
set encoding=utf-8
set expandtab "change tabs for spaces
set softtabstop=4 "how many collums pressing tab dows
set tabstop=4 "how many collums a tab counts
set shiftwidth=4 ">> operations

set smarttab
set autoindent
set smartindent

autocmd FileType html set expandtab softtabstop=2 tabstop=2 shiftwidth=2 textwidth=75
autocmd FileType html* set expandtab softtabstop=2 tabstop=2 shiftwidth=2 textwidth=75
autocmd FileType css set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd FileType javascript set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd FileType tex set expandtab softtabstop=2 tabstop=2 shiftwidth=2 textwidth=75
autocmd FileType markdown set textwidth=48

set linebreak  "break on end word
set scrolloff=10 "Automove 10 lines above/below

set nocompatible
