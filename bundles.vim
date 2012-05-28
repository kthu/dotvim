let $GIT_SSL_NO_VERIFY = 'true'
set nocompatible  "be IMproved
filetype off  " required 

set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/cup.vim'
Bundle 'gigelu/vim-javacomplete'
Bundle 'mattn/zencoding-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/fish.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'majutsushi/tagbar'
" Bundle 'xolox/vim-easytags'
" Vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Arduino-syntax-file'
Bundle 'gtk-mode'
Bundle 'AutoTag'
" Non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"

filetype plugin indent on "required
 
" Brief Vundle help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
