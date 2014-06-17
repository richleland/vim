" don't worry about compatibility with vi
set nocompatible

" bundle auto-loading
filetype off
source ~/.vim/bundles.vim
filetype plugin indent on

" 256 colors in terminal
set t_Co=256
colorscheme railscasts

" security
set modelines=0

" tabs/spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

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
set statusline=%F\ %y\ [L%l/%L,C%c]\ (%p%%)\ %{fugitive#statusline()}
syntax enable

" Soft/hard wrapping
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=qrn1
if version >= 703
    set colorcolumn=80
endif

" change the leader key
let mapleader = ","

" Buffers
nnoremap <leader>n :bnext<cr>
nnoremap <leader>N :bprevious<cr>

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
nnoremap <leader>p :CtrlP<cr>

if has("gui_running")
    colorscheme railscasts
    "set guifont=Inconsolata:h14
    set guifont=Inconsolata-dz\ for\ Powerline:h12
    " always hide the toolbar icons
    set guioptions-=T
    " always hide the scrollbars
    set guioptions-=L
    set guioptions-=l
    set guioptions-=R
    set guioptions-=r

    if has("gui_macvim")
        macmenu &File.New\ Tab key=<nop>
    end
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ack
map <leader>a :Ack

" easymotion
let g:EasyMotion_leader_key = '<leader>m'

" gist.vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" NERD Tree
map <c-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\~$', '.*\.pyc$', 'pip-log\.txt$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1

" ragtag
let g:ragtag_global_maps = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=['bundle/vim-snippets/UltiSnips', 'ultisnips']

" tagbar
nmap <leader>t :TagbarToggle<cr>
let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['▸', '▾']

" YankRing.vim
nnoremap <silent> <leader>y :YRShow<CR>
let g:yankring_window_height = 10
let g:yankring_replace_n_pkey = '<nul>'
let g:yankring_replace_n_nkey = '<nul>'

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:Powerline_symbols="compatible"

" flake8
let g:flake8_ignore="E501,W293,W404"

" syntastic
let g:syntastic_javascript_checkers=['jshint']

" CtrlP
let g:ctlrp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

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
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

" python
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePost *.py call Flake8()
autocmd BufNewFile,BufRead *.wsgi setlocal filetype=python
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4

" php
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.php :retab! 4

" html
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType htmldjango setlocal tabstop=2 softtabstop=2 shiftwidth=2

" yaml
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.sls setlocal filetype=yaml

" javascript
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.json setlocal filetype=javascript
autocmd BufNewFile,BufRead .jshintrc setlocal filetype=javascript
autocmd BufNewFile,BufRead .csslintrc setlocal filetype=javascript
autocmd BufNewFile,BufRead *.hbs setlocal filetype=handlebars

" restructured text
autocmd FileType rst setlocal noautoindent nocindent nosmartindent indentexpr=

" markdown
autocmd FileType markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

" jinja
"autocmd BufNewFile,BufRead *.jinja setlocal filetype=jinja

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SUPREME LAZYNESS, aka AWESOMENESS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reload Google Chrome on Mac from Vim.
" https://gist.github.com/2001993
" Adapted from:  https://github.com/gcollazo/BrowserRefresh-Sublime/
function! ChromeReload()
    if has("gui_macvim")
        :silent !osascript ~/.vim/reloadchrome.scpt > /dev/null 2>&1
    endif
endfunction
nmap <leader>cr :call ChromeReload()<cr>
