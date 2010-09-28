" bundle auto-loading with pathogen
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" don't worry about compatibility with vi
set nocompatible

" security
set modelines=0

" tabs/spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Backups
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup                        

" misc. configs
set number
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" change the leader key
let mapleader = ","

" Edit .vimrc
nmap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
map <leader><space> :noh<cr>
nmap <tab> %
vmap <tab> %

" remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

" diff
nmap <leader>d :!hg diff %<cr>

" Ack
map <leader>a :Ack

" NERD Tree
map <F2> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

