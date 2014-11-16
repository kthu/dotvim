let $GIT_SSL_NO_VERIFY = 'true'
set nocompatible  "be IMproved
filetype off  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Original repos on github
Bundle 'tpope/vim-sensible'
"Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'amdt/vim-niji'
Bundle 'derekwyatt/vim-scala'
Bundle 'dgrnbrg/vim-redl'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'godlygeek/tabular'
Bundle 'groenewege/vim-less'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'
Bundle 'guns/vim-slamhound'
Bundle 'guns/vim-sexp'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-sexp-mappings-for-regular-people'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vinegar'
Bundle 'vim-scripts/cup.vim'
Bundle 'vim-scripts/fish.vim'
Bundle 'jplaut/vim-arduino-ino' 

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'sickill/vim-monokai'
Bundle 'jnurmine/Zenburn'
Bundle 'fmoralesc/vim-vitamins'
Bundle 'croaker/mustang-vim'

" Vim-scripts repos
Bundle 'javacomplete'
Bundle 'L9'
Bundle 'Arduino-syntax-file'
Bundle 'gtk-mode'
Bundle 'AutoTag'
" Non github repos
Bundle 'git://git.wincent.com/command-t.git'
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
