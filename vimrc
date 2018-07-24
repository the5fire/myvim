"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call vundle#rc()

"""""""""""""""""" 基础配置
set history=200
set guifont=Source_Code_Pro:h12

filetype plugin indent on     " required!
" Set to auto read when a file is changed from the outside
set autoread
let mapleader = ','
let g:mapleader = ','
noremap \ ,
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
set number
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
"禁止生成时文件
set nobackup
set noswapfile

set wrap

syntax enable

vmap <c-c> :w !pbcopy<CR><CR>

" 状态栏配置
set laststatus =2 "always has status line

"switch window
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l


"""""""""""""""""""基础配置结束"""""""""""""""""""""""""""


" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'  " 语法检查

Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_server_python_interpreter = '/Library/Frameworks/Python.framework/Versions/3.6/Resources/Python.app/Contents/MacOS/Python'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'

" 文档编辑
" restructtext
"Plugin 'Rykka/riv.vim'
"Plugin 'plasticboy/vim-markdown'
Plugin 'tommcdo/vim-exchange'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-easymotion' " 快速跳转
Plugin 'Flowerowl/ici.vim'

" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 配色
Plugin 'altercation/vim-colors-solarized'
Plugin 'rakr/vim-one'

" golang
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" vim-scripts repos
Plugin 'L9'
" Java Conf
"Plugin 'Vim-JDE'
"Plugin 'JavaBrowser'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'posva/vim-vue'


" non github repos
" Plugin 'git://git.wincent.com/command-t.git'
"
"
"插件的配置 
"
"set anti enc=utf-8
set guifont=Courier_New:h16
set guifontwide=STXihei:h16
let g:syntastic_python_python_exe = 'python3'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_checker_args='--ignore=W501,E225'
let syntastic_python_checker_args='--ignore=E501,E225'

let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = ['yapf']
let g:ale_completion_enabled = 0
" let g:ale_fix_on_save = 1  " 开启保存时格式化代码

" 快捷键配置
autocmd FileType python nnoremap <leader>pdb :-1read $HOME/.vim/.snippets/pdb.py<CR>==
autocmd FileType python nnoremap <leader>ipdb :-1read $HOME/.vim/.snippets/ipdb.py<CR>==
autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>

set background=dark
colorscheme solarized
"colorscheme one

" golang
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufferWritePost,FileWritePost *.go execute 'go fmt'
"autocmd BufWritePre *.go '!go fmt'
"autocmd FileType go autocmd BufWritePre <buffer> Fmt


" NERDTree=====
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=24
let NERDTreeIgnore=['\.pyc', '\.swp', '\~']

" tagbar
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
noremap <Leader>y :TagbarToggle<CR>       " Display panel with y (or ,y)
let g:vim_markdown_folding_disabled = 1

" LustyBufferExplorer=====
"nnoremap <leader>lb :LustyBufExplorer<CR>
set hidden

let g:syntastic_go_checkers=['go', 'govet', 'golint']
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme='solarized256_dark'
set t_Co=256                   " 在终端启用256色

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"  auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
