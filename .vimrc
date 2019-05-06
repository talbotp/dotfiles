"""""""""""""""""""""""""""""""""""""
" Change how vim works.
"""""""""""""""""""""""""""""""""""""

" Set up tabs with 4 spaces
set tabstop=4
set softtabstop=4
set expandtab

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

