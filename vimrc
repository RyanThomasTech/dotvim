execute pathogen#infect()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set smartindent
syntax on
colorscheme dracula

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

inoremap jk <esc>

com! W write
com! -bar -nargs=* -complete=file -range=% -bang W      <line>,<line2>write<bang><args>
com! -bar -nargs=* -complete=file -range=% -bang Wq      <line>,<line2>wq<bang><args>

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
