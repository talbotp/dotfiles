"""""""""""""""""""""""""""""""""""""
" Change how vim works.
"""""""""""""""""""""""""""""""""""""

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" Show line numbers
set number

" Show last command entered.
set showcmd

" Show line where cursor is 
set cursorline

" Load indents for specific files
filetype indent on 

" Show menu 
set wildmenu

" Highlight parenthesis pairs
set showmatch

" Better searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set nohls

syntax on

"""""""""""""""""""""""""""""""""""""
" plug-vim plugin manager
"""""""""""""""""""""""""""""""""""""

" Setting up vim-plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

" gruvbox style 
set background=dark

"""""""""""""""""""""""""""""""""""""
" Custom mappings
"""""""""""""""""""""""""""""""""""""

