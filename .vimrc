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
set scrolljump=5
set scrolloff=5 "设定光标离窗口上下边界 5 行时窗口自动滚动
set foldenable
set autoread "文件在Vim之外修改过，自动重新读入
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
set linespace=0
set mousehide
set winminheight=0
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set incsearch
set hlsearch
set infercase
set ignorecase
set smartcase
set showmatch

let mapleader= ","

syntax enable

set background=dark
colorscheme solarized

" #########  Vundle begin  ########

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'L9'

Plugin 'vim-ruby/vim-ruby'

Plugin 'tpope/vim-rails'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'Raimondi/delimitMate' " 自动补全引号、括号等

Plugin 'scrooloose/nerdcommenter' " 注释

Plugin 'ntpeters/vim-better-whitespace' " Better whitespace highlighting for Vim

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_guide_size = 1
map <silent><F7>  <leader>ig

Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store', '^\.git$', '\py[cd]$', '\~$', '\.swp$', '^\.hg$', '^\.svn$', '\.baz$']
let g:nerdtree_tabs_open_on_gui_startup=0

Plugin 'kchmck/vim-coffee-script'

"" -------------------Ctrlp配置----------------------
Plugin 'kien/ctrlp.vim'
map <C-o> :CtrlPBuffer<CR>
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
if executable('ag')
  let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack-grep')
  let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
  let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
  let s:ctrlp_fallback = 'find %s -type f'
endif
let g:ctrlp_user_command = {
      \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
      \ 'fallback': s:ctrlp_fallback
      \ }
if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
  " CtrlP extensions
  let g:ctrlp_extensions = ['funky']

  "funky
  nnoremap <Leader>fu :CtrlPFunky<Cr>
endif
" -------------------------------------------------

" --------------------------------------------------
"    snippets for various programming languages
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' "依赖于vim-addon-mw-utils和tlib
" Optional:
Plugin 'honza/vim-snippets'
" --------------------------------------------------

Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

Plugin 'tpope/vim-surround'

Plugin 'slim-template/vim-slim'

Plugin 'airblade/vim-gitgutter'

Plugin 'bling/vim-airline'
let g:airline_theme = "solarized" "设定主题
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'

" --------------markdown---------------------
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

let g:vim_markdown_folding_disabled=1  "Disable Folding

Plugin 'rking/ag.vim' " replacement for Ack


" --------------vim-rspec---------------------
Plugin 'thoughtbot/vim-rspec'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" --------------vim-rspec---------------------

call vundle#end()            " required

filetype plugin indent on    " required


" #########  Vundle end  ########
