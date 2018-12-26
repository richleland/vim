call plug#begin('~/.vim/plugged')

Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'airblade/vim-gitgutter'
Plug 'craigemery/vim-autotag'
Plug 'editorconfig/editorconfig-vim'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/bufkill.vim'

" Add plugins to &runtimepath
call plug#end()

