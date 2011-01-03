" bundle auto-loading with pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
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
set undofile

" use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
 
" misc. configs
set number
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set cmdheight=2
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set statusline=%F\ %y\ [L%l/%L,C%c]\ (%p%%)\ %{fugitive#statusline()}

" Soft/hard wrapping
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=qrn1
set colorcolumn=85

" change the leader key
let mapleader = ","

" Buffers
nnoremap <leader>n :bnext<cr>
nnoremap <leader>p :bprevious<cr>

" Edit .vimrc
nmap <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

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

" window helpers
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nnoremap <leader>1 yypVr=o<CR>
nnoremap <leader>2 yypVr*o<CR>
nnoremap <leader>3 yypVr-o<CR>

" diff
nmap <leader>d :!hg diff %<cr>

" Ack
map <leader>a :Ack 

" NERD Tree
map <F2> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1

" pydiction (py tab-completion)
let g:pydiction_location = '~/.vim/ftplugin/pydiction/complete-dict'

" gist.vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" snipmate
autocmd FileType html set ft=htmldjango.html

" Edit GTD file
nmap <leader>g :e ~/Dropbox/GTD/today.txt<cr>

" Edit ssh_config file
nmap <leader>sc :e ~/config-files/ssh_config<cr>

" YankRing.vim
nnoremap <silent> <leader>y :YRShow<CR>

" ragtag
let g:ragtag_global_maps = 1

"
" file type specific
"

" ruby
autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

" python
autocmd BufWritePre *.py :%s/\s\+$//e

