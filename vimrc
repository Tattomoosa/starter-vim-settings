" A simple but opinionated vimrc

" all settings in vimrc correspond to typing the same thing in the command-line mode
" : in insert mode 

" vim tips: https://hackmd.io/xq34KcrSTHu3vz8T7yfsFg

""""""""""""""""""""""""""""""""""""""""
" SETTINGS                             "
""""""""""""""""""""""""""""""""""""""""

" does a whole bunch of things 
" :h nocompatible
set nocompatible

" vim's default backspace behavior will feel odd
" :h 'backspace'
set backspace=indent,eol,start

" shows cursor line,column on bottom
set ruler

" completes commands
set wildmenu

" syntax highlighting
syntax enable

" always show status line
set laststatus=2

" search down into subfolders with find
set path+=**

" :colorscheme <tab> to bring up a selection menu to find a decent one
colorscheme industry

" allow mouse for everything
set mouse=a

" show matching [{(
set showmatch

" searching
set incsearch
set ignorecase
set smartcase
set hlsearch

" hidden buffers
set hidden
" confirm before quitting unsaved
set confirm

set nonumber
set norelativenumber

" when splitting, focus on the new split
set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""
" MAPPINGS                             "
""""""""""""""""""""""""""""""""""""""""

" NORMAL MODE
"""""""""""""

" the one vim's own manual recommends!
" changes Y to yank until end of the current line
" (by default Y does the same things as yy for compatibility reasons)
nnoremap Y y$

" space as leader in normal mode
" leader is `\` by default
let mapleader = "\<Space>"

" easy clear search highlights
nnoremap <leader><leader> :nohl<CR>

" easy edit vimrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" toggle numberline (with relativenumber)
nnoremap <leader>tn :set relativenumber!<CR>set number!<CR>

" INSERT MODE
"""""""""""""

" match delimiters, but only if newline
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap {<CR> {<CR>}<C-o>O

" VISUAL MODE
"""""""""""""

" easy multiple indent/outdent(?)
vnoremap < <gv
vnoremap > >gv

command! -nargs=1 Grep grep <f-args> -r .
