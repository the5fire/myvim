"  配置vundle安装
set nocompatible               " be iMproved
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" autocompletion
" Bundle 'davidhalter/jedi-vim'  
Bundle 'tpope/vim-sensible'
" file tree
Bundle 'scrooloose/nerdtree'   
" file search
Bundle 'kien/ctrlp.vim'        
"Bundle 'sjbach/lusty'
" git plugin
Bundle 'tpope/vim-fugitive'    
" syntax checking plugin
Bundle 'vim-scripts/Syntastic' 
Bundle 'hynek/vim-python-pep8-indent'
" comment code
Bundle 'scrooloose/nerdcommenter'   
Bundle 'Valloric/YouCompleteMe'
" tag of code
Bundle 'majutsushi/tagbar'     
" search file
Bundle 'mileszs/ack.vim'       
Bundle 'rking/ag.vim'

" 文档编辑
" restructtext
"Bundle 'Rykka/riv.vim'
Bundle 'tommcdo/vim-exchange'

Bundle 'terryma/vim-multiple-cursors'       
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Flowerowl/ici.vim'

" 状态栏
Bundle 'Lokaltog/vim-powerline'
" Terminal Vim with 256 colors colorscheme
Bundle 'fisadev/fisa-vim-colorscheme'
" 配色
Bundle 'altercation/vim-colors-solarized'
Bundle 'stephenmckinney/vim-solarized-powerline'

" golang
Bundle 'jnwhiteh/vim-golang'
Bundle 'dgryski/vim-godef'
Bundle 'nsf/gocode', {'rtp': 'vim/'}

" vim-scripts repos
Bundle 'L9'
" Java Conf
Bundle 'Vim-JDE'
Bundle 'JavaBrowser'


Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"


" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

"
" 一些基本配置
"
set anti enc=utf-8
set guifont=Source_Code_Pro:h12

filetype plugin indent on     " required!
" Set to auto read when a file is changed from the outside
set autoread
let mapleader = ','
let g:mapleader = ','
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
set number

set guifont=Courier_New:h16
set guifontwide=STXihei:h16
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_checker_args='--ignore=W501,E225'
let syntastic_python_checker_args='--ignore=E501,E225'
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

" golang
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufferWritePost,FileWritePost *.go execute 'go fmt'
"autocmd BufWritePre *.go '!go fmt'
autocmd FileType go autocmd BufWritePre <buffer> Fmt

vmap <c-c> :w !pbcopy<CR><CR>

" 状态栏配置
set laststatus =2 "always has status line

colorscheme torte
set background=dark


"
"插件相关配置
"

" NERDTree=====
" au VimEnter * NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=24
let NERDTreeIgnore=['\.pyc', '\.swp', '\~']
"switch window
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" tagbar
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
noremap <Leader>y :TagbarToggle<CR>       " Display panel with y (or ,y)

" LustyBufferExplorer=====
"nnoremap <leader>lb :LustyBufExplorer<CR>
set hidden

"let g:syntastic_go_checkers=['go', 'govet', 'golint']
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme='solarized256_dark'
set t_Co=256                   " 在终端启用256色

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
