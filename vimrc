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
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'sjbach/lusty'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/Syntastic'

" vim-scripts repos
Bundle 'L9'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

"
" 一些基本配置
"
filetype plugin indent on     " required!
let mapleader = ','
let g:mapleader = ','

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
"Always show current position
set ruler
"
"" Height of the command bar
set cmdheight=2

set nobackup
set noswapfile
set nowb

" 状态栏配置
set laststatus =2 "always has status line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]   
set statusline+=%=\ %{fugitive#statusline()}
set statusline+=%{SyntasticStatuslineFlag()}


"
"插件相关配置
"
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=22
let NERDTreeIgnore=['\.pyc', '\.swp']
"switch window
"nnoremap <c-h> <c-w>h
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l
"
"" LustyBufferExplorer=====
nnoremap <leader>lb :LustyBufExplorer<CR>
set hidden

"
"" Brief help
" :BundleList          - list configured bundles
" " :BundleInstall(!)    - install(update) bundles
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
" " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle command are not allowed..
