let $GIT_SSL_NO_VERIFY = 'true'
set nocompatible  "be IMproved
filetype off  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/cup.vim'
Bundle 'mattn/emmet-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'vim-scripts/fish.vim'
Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-sexp-mappings-for-regular-people'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
Bundle 'derekwyatt/vim-scala'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'guns/vim-clojure-static'
Bundle 'amdt/vim-niji'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'guns/vim-sexp'

" Bundle 'xolox/vim-easytags'

" Vim-sc'ripts repos
Bundle 'javacomplete'
Bundle 'L9'
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
