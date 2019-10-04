" don't worry about compatibility with vi
set nocompatible

" bundle auto-loading
source ~/.vim/plugs.vim

" colors
set t_Co=256
colorscheme gruvbox

" security
set modelines=0

" tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" clipboard
set clipboard=unnamedplus

" Backups
set backupdir=~/.vim/tmp/backup//,/tmp
set directory=~/.vim/tmp/swap//,/tmp
set backup
if version >= 703
    set undodir=~/.vim/tmp/undo//,/tmp
    set undofile
endif

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
inoremap jj <esc>

" folding
"set foldmethod=syntax

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
"set tags=./.tags,.tags;
syntax enable

" Soft/hard wrapping
set nowrap
set textwidth=0
set wrapmargin=0
set formatoptions=qrn1
if version >= 703
    set colorcolumn=80
endif

" change the leader key
let mapleader = ","

" Buffers and tabs
nnoremap <leader>n :bnext<cr>
nnoremap <leader>N :bprevious<cr>
nnoremap <tab> :tabn<cr>
nnoremap <s-tab> :tabp<cr>

" Edit .vimrc
nmap <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Searching
nnoremap / /\v
vnoremap / /\v
nnoremap <leader>z xhp/<C-R>-<CR>
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
map <leader><space> :noh<cr>
"nmap <tab> %
"vmap <tab> %

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
nnoremap <leader>4 yypVr~o<CR>

" Edit GTD file
nmap <leader>g :e ~/Dropbox/GTD/today.txt<cr>

" Edit ssh_config file
nmap <leader>sc :e ~/config-files/ssh_config<cr>

" open location in Finder
nmap <leader>fo :!open

" create blank space, returning to normal mode
nmap <leader>o o<esc>
nmap <leader>O O<esc>

" remove all empty lines or lines with only whitespace characters
nmap <leader>S :g/^\s*$/d<cr>

" re-indent entire file
nmap <leader>i ggVG=

" build sphinx docs
nnoremap <leader>bs :!make html<cr>

" read in contents of curl
nnoremap <leader>r :read !curl -s --raw

" invoke CtrlP
nnoremap <leader>t :CtrlP<cr>

if has("gui_running")
    " always hide the toolbar icons
    set guioptions-=T
    " always hide the scrollbars
    set guioptions-=L
    set guioptions-=l
    set guioptions-=R
    set guioptions-=r


    " reset the terminal clipboard setting
    set clipboard=

    set guifont=Menlo:h14
    let g:gruvbox_italic=0

    if has("gui_macvim")
        macmenu &File.New\ Tab key=<nop>
    end
end

" start up startify, then NERDTree
autocmd VimEnter *
      \   if !argc()
      \ |   Startify
      \ |   NERDTree
      \ |   wincmd w
      \ | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
for config in split(glob('~/.vim/config/*.vim'), '\n')
  execute 'source' config
endfor


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE TYPE SPECIFIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" css
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType scss setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType less setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.less setlocal filetype=less

" ruby
autocmd BufNewFile,BufRead Berksfile setlocal filetype=ruby
autocmd BufNewFile,BufRead Cheffile setlocal filetype=ruby
autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
autocmd BufNewFile,BufRead Puppetfile setlocal filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby
autocmd BufNewFile,BufRead *.cap setlocal filetype=ruby
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

" python
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.py :retab! 4
autocmd BufNewFile,BufRead *.wsgi setlocal filetype=python
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 colorcolumn=99

" php
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.php :retab! 4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4

" html
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType htmldjango setlocal tabstop=2 softtabstop=2 shiftwidth=2

" yaml
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.sls setlocal filetype=yaml

" javascript
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.json setlocal filetype=json
autocmd BufNewFile,BufRead .jshintrc setlocal filetype=javascript
autocmd BufNewFile,BufRead .csslintrc setlocal filetype=javascript
autocmd BufNewFile,BufRead *.hbs setlocal filetype=handlebars

" conf files
autocmd FileType nginx setlocal tabstop=2 softtabstop=2 shiftwidth=2

" restructured text
autocmd FileType rst setlocal noautoindent nocindent nosmartindent indentexpr=

" markdown
autocmd FileType markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

