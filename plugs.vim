call plug#begin('~/.vim/plugged')

"Plug 'Lokaltog/powerline', {'rtp': 'bindings/vim/'}
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/bufkill.vim'

" Add plugins to &runtimepath
call plug#end()

