"==============================================================
" Author: LeeChao
" Version: 0.0.1
" Email: clhlc@sina.com
"==============================================================


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'
Bundle 'mileszs/ack.vim'
Bundle 'L9'
Bundle 'Lokaltog/vim-powerline'
Plugin 'kabbamine/vcoolor.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-sexp'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'walm/jshint.vim'
Plugin 'moll/vim-node'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'nvie/vim-flake8'
if has('python')
   Plugin 'davidhalter/jedi-vim'
   Plugin 'axiaoxin/vim-json-line-format'
   Plugin 'SirVer/ultisnips'
endif
Plugin 'axiaoxin/favorite-vim-colorscheme'
Plugin 'junegunn/vim-emoji'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'

" color
Bundle 'altercation/vim-colors-solarized'
" Bundle 'stephenmckinney/vim-solarized-powerline'

"" 一些基本配置
set autoread
let mapleader = ','
let g:mapleader = ','
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5

let g:syntastic_python_checker_args = "--max-complexity 13 --ignore=E501"
" Ignore case when searching
set ignorecase smartcase
" Highlight search results
set hlsearch incsearch
" Use spaces instead of tabs
set expandtab smarttab shiftwidth=4 tabstop=4
"Always show current position
set ruler
set number

" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" F1 - F6 设置

" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"

function! HideNumber()
"  if(&relativenumber == &number)
"    set relativenumber! number!
"  elseif(&number)
"    set number!
"  else
"    set relativenumber!
"  endif
  set number!
endfunc

set norelativenumber
" F2 行号开关，用于鼠标复制代码用
nnoremap <F2> :call HideNumber()<CR>


" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"" Height of the command bar
set cmdheight=2
"禁止生成临时文件
set nobackup
set noswapfile

set wrap

vmap <c-c> "+y

" 状态栏配置
set laststatus =2 "always has status line

""插件相关配置
"" NERDTree=====
" au VimEnter * NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
let NERDTreeWinSize=24
let NERDTreeIgnore=['\.pyc', '\.swp', '\~']

"switch window
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" LustyBufferExplorer=====
nnoremap <leader>lb :LustyBufExplorer<CR>
set hidden

let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme='solarized256_dark'
set background=dark
" colorscheme solarized
set t_Co=256                   " 在终端启用256色


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
