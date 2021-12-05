let $GIT_SSL_NO_VERIFY = 'true'
set nocompatible  "be IMproved
filetype off  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Original repos on github
Bundle 'luochen1990/rainbow'
Bundle 'godlygeek/tabular'
Bundle 'groenewege/vim-less'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-sexp-mappings-for-regular-people'
Bundle 'tpope/vim-salve'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vinegar'

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'arcticicestudio/nord-vim'
Bundle 'dracula/vim'
Bundle 'sickill/vim-monokai'
Bundle 'jnurmine/Zenburn'
Bundle 'fmoralesc/vim-vitamins'
Bundle 'croaker/mustang-vim'
"Bundle 'vim-airline/vim-airline-themes'
Bundle 'haishanh/night-owl.vim'
Bundle 'morhetz/gruvbox'

filetype plugin indent on "required

" Brief Vundle help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
