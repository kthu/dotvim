version 7.3

set     nocompatible  "be IMproved
source  ~/.vim/bundles.vim

set     encoding=utf-8

set     shell=/bin/bash

"       autowrite: Automatically save modifications to files
"       when you use critical (rxternal) commands.
set     autowrite

"       backup:  backups are for wimps  ;-)
set     nobackup

"       dictionary: english words first
set     dictionary=/usr/share/dict/words

"       formatoptions: Options for the "text format" command ("gq")
"                      I need all those options (but 'o')!
set     formatoptions+=cqrt

"       smart case for searches
set     ignorecase
set     smartcase

set     wildignore+=*/tmp/*,*/target/*,*/.git/*,*/.hg/*,*/.svn/*,*.so,*.swp,*.zip,*.jar,*.class,*.swo,*.o,*.pyc,*.jpg,*.jpeg,*.png,*.gif,*.mo,*.po

"       Scroll off. Helps overview
set     scrolloff=4
set     sidescrolloff=15

"       lazyredraw:  do not update screen while executing macros
set     lazyredraw

"       magic: use some magic in search patterns?  Certainly!
set     magic

"       number:
set     number relativenumber

"       report: show a report when N lines were changed.
"               report=0 thus means "show all changes"!
set     report=0

"       cursorline:  Highlight the current line (in active window only)
set     cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"       showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
set     showmode

"       suffixes:    Ignore filename with any of these suffixes
"                    when using the ":edit" command.
"                    Most of these are files created by LaTeX.
set     suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar

"       startofline:  no:  do not jump to first character with page
"       commands, ie keep the cursor in the current column.
set     nostartofline

"      gnome-terminal hides the fact that it supports 256 colors.
if $COLORTERM == 'gnome-terminal' || $TERM == 'screen'
   set t_Co=256
endif

"       switch syntax highlighting on, when the terminal has colors
if      &t_Co > 2 || has("gui_running")
        syntax on
endif

"       title for xterm windows:
set     title

"       viminfo:  What info to store from an editing session
"                 in the viminfo file;  can be used at next session.
set     viminfo=%,'50,\"100,:100,n~/.viminfo
au      BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"       automatically reload vimrc when it's saved
au      BufWritePost .vimrc so ~/.vimrc

set     visualbell

"       t_vb:  terminal's visual bell - turned off to make Vim quiet!
"       Please use this as to not annoy cow-orkers in the same room.
"       Thankyou!  :-)
set     t_vb=

set     whichwrap=<,>

"       wildchar  the char used for "expansion" on the command line
"                 default value is "<C-E>" but I prefer the tab key:
set     wildchar=<TAB>

"       Enable virtualedit (lets me move cursor to spots without characters)
set     virtualedit=all

"       remove tool bar
set     guioptions-=T

"       remove right side scroll bar
set     guioptions-=r

"       remove right side scroll bar when screen is split
set     guioptions-=R

"       remove left side scroll bar
set     guioptions-=l

"       remove left side scroll bar when screen is split
set     guioptions-=L

set     guifont=Monospace

"       ABBREVIATIONS
iab     seperate separate
iab     teh the
iab     isntall install

"       My address (Email)
"       makes it easy to type them without typos  ;-)
iab     EMAIL Kjetil.Thuen@gmail.com
iab     MYNAME Kjetil Thuen

"       Current date and time
iab     YDATE <C-R>=strftime("%a %d %b %Y %T")<CR>
"       Example: Tue Dec 16 1997 12:07:00 CET
"

let     mapleader = ","

"       <leader>p to  toggle paste
nmap    <leader>p :set paste!<c-m>:set paste?<c-m>

"       Disable paste when leavin insert mode
au      InsertLeave * set nopaste

"       <leader>d to remove carriage return symbols. for those annoying Windows files
nmap    <leader>d :%s/\r//g<c-m>

"       ,dr = decode/encode rot13 text in visual mode
vmap    <leader>dr :!tr A-Za-z N-ZA-Mn-za-m

"       HTML Tidy, http://tidy.sourceforge.net/
"       " select xml text to format and type ,tidy
vmap    <leader>tidy :%!tidy -q -i -asxml -f /dev/null<CR>

"       AUTOCOMMANDS
"       just load the main syntax file when Vim was compiled with "+syntax"
if      has("syntax")
        " The following sources the main syntax file,
        " ie. "$VIM/syntax/syntax.vim", see ":help :syn-on":
        syntax on
endif

"       Reselect visual block after in-/out-dent
vnoremap < <gv
vnoremap > >gv

"       Toggle search highlights
noremap <space> :set hlsearch! hlsearch?<CR>

"       Toggle invisibles
noremap <Leader>i :set list!<CR>

"       Open alternate buffer
noremap <Leader><Leader> <C-^>

"       :w!! saves using sudo
" cmap 	w!! :execute ':silent w !sudo tee % > /dev/null' | :edit!

"       Disable arrow keys, like the cool kids are doing
"       Forcing this shit into my muscle memory
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

"       SETTINGS THAT REQUIRE EXTENSIONS
"       Find files and buffers
nmap    <leader>ff :CtrlP<c-m>
nmap    <leader>fb :CtrlPBuffer<c-m>
let     g:ctrlp_custom_ignore = {'dir':  '\v[\/](target|resources|build|out)$', 'file': '\v\.(log)$'}
let     g:ctrlp_working_path_mode = 'ra'
let     g:ctrlp_mruf_include = 'vimrc'
let     g:ctrlp_mruf_save_on_update = 0

"       Rainbow parenthesis
let     g:rainbow_active = 1
" ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta']
let     g:rainbow_conf = {
\         'guifgs':   ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\         'ctermfgs': ['darkred', 'darkyellow', 'darkgreen', 'lightblue', 'lightcyan', 'lightmagenta'],
\         'operators': '_,_',
\         'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\         'separately': {
\            '*': {},
\         'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\         },
\         'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\        },
\        'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\        },
\        'css': 0,
\        'scss': 0,
\   }
\}


"       Toggle the Tagbar
nmap    <leader>b :TagbarToggle<c-m>
let     g:tagbar_autofocus = 1
let     g:tagbar_autoclose = 1

let     g:mustache_abbreviations = 1


source  ~/.vim/theme.vim
