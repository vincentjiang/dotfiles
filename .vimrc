set encoding=utf8

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" 设置缩进
set expandtab smarttab
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent cindent smartindent shiftround

set nu
set ruler "开启右下角光标位置显示
set wildmenu "在输入命令时列出匹配项目
set scrolloff=5 "设定光标离窗口上下边界 5 行时窗口自动滚动
set autoread "文件在Vim之外修改过，自动重新读入
set ai "自动缩进
set si "智能缩进
set cursorline
set modelines=1
set laststatus=1
set history=100
set magic
set showcmd
set showmode
set matchtime=1
set noswapfile "不生成交换文件
set nobackup
set hidden
set backspace=indent,eol,start "make that backspace key work the way it should

set incsearch
set hlsearch
set infercase
set ignorecase
set smartcase
set showmatch

let mapleader= ","

syntax enable

set background=dark
colorscheme grb256

" Make comments and special characters look better
highlight Comment    ctermfg=245 guifg=#8a8a8a
highlight NonText    ctermfg=240 guifg=#585858
highlight SpecialKey ctermfg=240 guifg=#585858


" #########  Vundle begin  ########

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

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
let NERDTreeIgnore=['.DS_Store', '.git']

Plugin 'kchmck/vim-coffee-script'

Plugin 'kien/ctrlp.vim'
map <C-o> :CtrlPBuffer<CR>

" --------------------------------------------------
"    snippets for various programming languages 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' "依赖于vim-addon-mw-utils和tlib
" Optional:
Plugin 'honza/vim-snippets'
" --------------------------------------------------

Plugin 'Raimondi/delimitMate'

Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1

Plugin 'slim-template/vim-slim'

Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_theme = "simple" "设定主题
" let g:airline#extensions#tabline#enabled = 1 "顶部tab栏显示
" let g:airline_powerline_fonts = 1 "启用airline字体

Plugin 'scrooloose/syntastic'

Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required

filetype plugin indent on    " required


" #########  Vundle end  ########
