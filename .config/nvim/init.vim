call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'yegappan/taglist'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'

call plug#end()

" Auto generate tags file on file write of *.c and *.h files
"utocmd BufWritePost *.c,*.h silent! !ctags . &

set number
set expandtab
set shiftwidth=4
set softtabstop=4
set lazyredraw

set colorcolumn=80,120

set scrolloff=999

colorscheme eldar

highlight LineNr ctermfg=254

highlight ColorColumnOuter ctermbg=red guibg=red

match ColorColumnOuter "\%120v"

set relativenumber
set number

" Incrementally search while typing
set incsearch
" Use smart case for searching
set ignorecase
set smartcase
" Highlight searches
set hlsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
