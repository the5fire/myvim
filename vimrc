"  配置vundle安装
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" autocompletion
Bundle 'davidhalter/jedi-vim'  
" file tree
Bundle 'scrooloose/nerdtree'   
" file search
Bundle 'kien/ctrlp.vim'        
" file buffer search
Bundle 'sjbach/lusty'          
" git plugin
Bundle 'tpope/vim-fugitive'    
" syntax checking plugin
Bundle 'vim-scripts/Syntastic' 
" comment code
Bundle 'scrooloose/nerdcommenter'   
" tag of code
Bundle 'majutsushi/tagbar'     
" search file
Bundle 'mileszs/ack.vim'       

Bundle 'terryma/vim-multiple-cursors'       
Bundle 'Lokaltog/vim-easymotion'

" 状态栏
Bundle 'Lokaltog/vim-powerline'
" 配色
Bundle 'altercation/vim-colors-solarized'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'altercation/vim-colors-solarized'

" vim-scripts repos
Bundle 'L9'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

"
" 一些基本配置
"
filetype plugin indent on     " required!
" Set to auto read when a file is changed from the outside
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

"" Height of the command bar
set cmdheight=2
"禁止生成临时文件
set nobackup
set noswapfile

set wrap

vmap <c-c> "+y

" 状态栏配置
set laststatus =2 "always has status line

colorscheme torte


"
"插件相关配置
"

" NERDTree=====
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
set t_Co=256                   " 在终端启用256色

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
