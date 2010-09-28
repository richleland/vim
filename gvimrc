" fullscreen awesomeness
set fuoptions = maxvert,maxhorz
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" macvim-specific
if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <leader>t <Plug>PeepOpen
    set guifont=Menlo:h13
end

