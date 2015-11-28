call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/powerline', {'rtp': 'bindings/vim/'}
Plug 'SirVer/ultisnips'
Plug 'elixir-lang/vim-elixir'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/bufkill.vim'

" Add plugins to &runtimepath
call plug#end()
