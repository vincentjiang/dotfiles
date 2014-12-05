set encoding=utf8

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set nu
set ruler "开启右下角光标位置显示
set wildmenu "在输入命令时列出匹配项目
set scrolloff=5 "设定光标离窗口上下边界 5 行时窗口自动滚动

set incsearch
set hlsearch
set ignorecase

let mapleader= ","

syntax enable
set background=dark
colorscheme desert


" #########  Vundle begin  ########

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'L9'

Plugin 'tpope/vim-rails'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'vim-scripts/tComment'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_guide_size = 1
map <silent><F7>  <leader>ig

Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store']

Plugin 'kchmck/vim-coffee-script'

Plugin 'kien/ctrlp.vim'
map <c-o> :CtrlPBuffer<CR>

" --------------------------------------------------
"    snippets for various programming languages 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
" --------------------------------------------------

Plugin 'Raimondi/delimitMate'

Plugin 'ervandew/supertab'

Plugin 'slim-template/vim-slim'

Plugin 'Lokaltog/vim-powerline'

Plugin 'tpope/vim-fugitive'

call vundle#end()            " required

filetype plugin indent on    " required


" #########  Vundle end  ########
