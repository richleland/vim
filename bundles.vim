" set runtime path, invoke vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let vundle manage vundle
Bundle 'gmarik/vundle'

" bundles
Bundle 'Lokaltog/powerline.git', {'rtp': 'bindings/vim/'}
Bundle 'Lokaltog/vim-easymotion.git'
Bundle 'SirVer/ultisnips.git'
Bundle 'airblade/vim-gitgutter.git'
Bundle 'ervandew/supertab.git'
Bundle 'godlygeek/tabular.git'
Bundle 'groenewege/vim-less.git'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jmcantrell/vim-virtualenv.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle "lepture/vim-jinja"
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'mileszs/ack.vim.git'
Bundle 'moll/vim-node.git'
Bundle 'nathanaelkane/vim-indent-guides.git'
Bundle 'nono/vim-handlebars'
Bundle 'nvie/vim-flake8.git'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'rodjek/vim-puppet.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'vim-scripts/Gist.vim.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'vim-scripts/bufkill.vim.git'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/jade.vim.git'
