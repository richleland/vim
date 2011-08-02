" macvim-specific
if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <leader>t <Plug>PeepOpen
    colorscheme railscasts
    "set guifont=Menlo:h12
    set guifont=Inconsolata:h14
    " always hide the toolbar icons
    set guioptions-=T
    " always hide the scrollbars
    set guioptions-=L
    set guioptions-=l
    set guioptions-=R
    set guioptions-=r
end

