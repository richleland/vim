"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/rleland/.cache/dein/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('/Users/rleland/.cache/dein')
  call dein#begin('/Users/rleland/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/rleland/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('joshdick/onedark.vim')
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('majutsushi/tagbar')
  call dein#add('mhinz/vim-startify')
  call dein#add('morhetz/gruvbox')
  call dein#add('rking/ag.vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('wsdjeg/dein-ui.vim')
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  let g:deoplete#enable_at_startup = 1

  call map(dein#check_clean(), "delete(v:val, 'rf')")

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

