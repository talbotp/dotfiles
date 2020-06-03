
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

set number          "Show line numbers
set showcmd         "Show last command entered.
set cursorline      "Show line where cursor is 
set wildmenu        "Show menu 
set showmatch       "Highlight parenthesis pairs

filetype indent on  "Load indents for specific files

" Better searching
set incsearch       "Search as characters are entered
set hlsearch        "Highlight matches
set nohls

syntax on           "Enable syntax highlighting

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

set background=dark

