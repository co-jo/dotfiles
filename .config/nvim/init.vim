call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set number
set expandtab
set shiftwidth=4
set softtabstop=4
set lazyredraw

set colorcolumn=80,120

colorscheme eldar

highlight LineNr ctermfg=254

highlight ColorColumnOuter ctermbg=red guibg=red

match ColorColumnOuter "\%120v"

