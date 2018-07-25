execute pathogen#infect()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set smartindent
syntax on
colorscheme dracula

func! WordProcessorMode()
    setlocal formatoptions=t1
    setlocal textwidth=80
    setlocal wrap
    setlocal linebreak
    setlocal nosmartindent
    setlocal noexpandtab
    map j gj
    map k gk
    setlocal spell spelllang=en_us
    colorscheme sacredforest
endfu
com! WP call WordProcessorMode()
