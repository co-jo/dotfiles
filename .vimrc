" Specify a directory for plugins For Neovim:
" ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Plug 'haya14busa/vim-keeppad'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
"Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'chie192/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'justinmk/vim-syntax-extra'
Plug 'pangloss/vim-javascript'

let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "\uE0B0"
let g:airline#extensions#tabline#right_sep = "\uE0B2"
let g:airline_section_z = ""

"let g:indentLine_enabled = 1
"let g:indentLine_setColors = 1
"let g:indelentLine_bgcolor_term = 0
"let g:indentLine_char = '¦'

syntax on

colorscheme tender

set expandtab
set shiftwidth=4
set softtabstop=4

set number              " show line numbers
set ttyfast
set lazyredraw
set scrolloff=9999

set cc=81

if exists('$TMUX')
    function! TmuxOrSplitSwitch(wincmd, tmuxdir)
        let previous_winnr = winnr()
        silent! execute "wincmd " . a:wincmd
        if previous_winnr == winnr()
            call system("tmux select-pane -" . a:tmuxdir)
            redraw!
        endif
    endfunction

    let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
    let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
    let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

    nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
    nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
    nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
    nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
endif
" Initialize plugin system
call plug#end()

" Mappings

nmap G Gzz
nmap n nzz
nmap N Nzz

"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

set nowrap
map <C-n> :NERDTreeToggle<CR>

