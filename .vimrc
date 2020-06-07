
" Set up vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox' 
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'dense-analysis/ale'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf.vim'
call plug#end()


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

set incsearch       "Search as characters are entered
set hlsearch        "Highlight matches
set nohls

syntax on           "Enable syntax highlighting

" Change windows in vim with Ctrl + Arrow keys
map <C-Right> <C-w>l 
map <C-Left> <C-w>h

""" gruvbox
set background=dark 

""" lightline
set laststatus=2    "For when lightline doesn't appear.
set noshowmode      "Don't show mode, as in lightline.

""" nerdtree
autocmd vimenter * NERDTree | wincmd w    "Start nerdtree on new vim, and refocus to chosen file. TODO make this not lose the lightline.
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif   " Close vim if nerdtree is last window open.

""" gitgutter
let g:gitgutter_grep=''
set updatetime=250      "250ms

