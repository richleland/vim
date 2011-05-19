" macvim-specific
if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <leader>t <Plug>PeepOpen
    colorscheme railscasts
    "set guifont=Menlo:h12
    set guifont=Inconsolata:h14
    " always hide the toolbar icons
    set guioptions-=T
end

