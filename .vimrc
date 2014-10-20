" Enable copying to clipboard using `CTRL + c`
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

set autoindent

let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store']

" unmap the arrow keys to avoid temptation
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <silent><F8> :NERDTree<CR>

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set nu
 
" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
 
" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
  
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
   
" All of your Plugins must be added before the following line

Plugin 'tpope/vim-fugitive.git'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" 17 vim color themes
Plugin 'https://github.com/vim-scripts/ScrollColors'

" for rails developing
Plugin 'tpope/vim-rails'
" ########################################################
"       snippets for various programming languages 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
" ########################################################

" toggle comment
Plugin 'vim-scripts/tComment'

Plugin 'scrooloose/nerdtree'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" search file
Plugin 'kien/ctrlp.vim'

" autocomplete when click key tab
Plugin 'ervandew/supertab'

" surround parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'

" provides automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

" syntax highlight
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()            " required
filetype plugin indent on    " required
