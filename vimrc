version 7.3
"       vim does not like fish :(
if      $SHELL =~ 'bin/fish'
        set shell=/bin/sh
endif

set     nocompatible  "be IMproved
source  ~/.vim/bundles.vim


set     encoding=utf-8

"       background:  Are we using a "light" or "dark" background?
set     background=dark

"       autoindent:  "on" as I usually write code.
set     autoindent

"       autowrite: Automatically save modifications to files
"       when you use critical (rxternal) commands.
set     autowrite

"       backup:  backups are for wimps  ;-)
set     nobackup

"       backspace:  '2' is much smarter. -> "help backspace"
set     backspace=2

"       comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set     comments=b:#,:%,fb:-,n:>,n:)

"       dictionary: english words first
set     dictionary=/usr/share/dict/words

"       errorbells: damn this beep!  ;-)
set     noerrorbells

"       esckeys: allow usage of cursor keys within insert mode
set     esckeys

"       formatoptions: Options for the "text format" command ("gq")
"                      I need all those options (but 'o')!
set     formatoptions+=cqrt

"       hidden:
set     hidden

"       hlsearch : highlight search - show the current search pattern
set     hlsearch

"       incremental ѕearch
set     incsearch

"       smart case for searches
set     ignorecase
set     smartcase

set     wildignore+=*/tmp/*,*.so,*.swp,*.zip

"       Scroll off. Helps overview
set     scrolloff=4
set     sidescrolloff=15

"       iskeyword:
"       iskeyword=@,48-57,_,192-255 (default)

"       Add the dash ('-'), the dot ('.'), and the '@' as "letters" to "words".
"       This makes it possible to expand email addresses, eg
"       guckes-www@vim.org
set     iskeyword=@,48-57,_,192-255,-,.,@-@
"
"       joinspaces:
"       insert two spaces after a period with every joining of lines.
"       I like this as it makes reading texts easier (for me, at least).
set     joinspaces

"       laststatus:  show status line?  Yes, always!
"       laststatus:  Even for only one buffer.
set     laststatus=2
"
"       lazyredraw:  do not update screen while executing macros
set     lazyredraw
"
"       magic: use some magic in search patterns?  Certainly!
set     magic
"
"       number:      ...
set     number

"
"       report: show a report when N lines were changed.
"               report=0 thus means "show all changes"!
set     report=0
"
"       ruler:       show cursor position?  Yep!
set     ruler
"
"       cursorline:  Highlight the current line (in active window only)
set     cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"       shiftwidth:  Number of spaces to use for each
"                    insertion of (auto)indent.
set     shiftwidth=3

"       tabstop
set     tabstop=3

"       expandtab:   Convert the tab to spaces
set     expandtab

"       showcmd:     Show current uncompleted command?  Absolutely!
set     showcmd

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

"       vitamins for 256 color terminals and gui vimѕ, tango for 8 color
"       terminals
if      has("gui_running")
        colorscheme molokai
elseif  &t_Co >= 256
        colorscheme zenburn
else
        colorscheme tango
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

"       show invisible chars
set     list listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:×


"       Search for selected text, forwards or backwards
vnoremap <silent> * :<C-U>
        \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
        \gvy/<C-R><C-R>=substitute(
        \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
        \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
        \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
        \gvy?<C-R><C-R>=substitute(
        \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
        \gV:call setreg('"', old_reg, old_regtype)<CR>

"       ABBREVIATIONS
iab     seperate separate
iab     teh the

"       My address (Email)
"       makes it easy to type them without typos  ;-)
iab     EMAIL Kjetil.Thuen@gmail.com
iab     MYNAME Kjetil Thuen

"       Current date and time
iab     YDATE <C-R>=strftime("%a %d %b %T %Y")<CR>
"       Example: Tue Dec 16 12:07:00 CET 1997

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


"       SETTINGS THAT REQUIRE EXTENSIONS

"       If only the NERDTree is left when closing buffers, quit vim
autocmd bufenter * if (winnr("$") == 2 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"       Enable powerline
set     rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"       <leader>f to find files using ctrlp
nmap    <leader>f :CtrlPMixed<c-m>
let     g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(so|jar|class|swp|swo|log|o|pyc|jpe?g|png|gif|mo|po)$' }


"       Toggle the NERDTree
nmap    <leader>t :NERDTreeToggle<c-m>

"       Toggle the Tagbar
nmap    <leader>b :TagbarToggle<c-m>
let     g:tagbar_autofocus = 1
let     g:tagbar_autoclose = 1

"       Disable arrow keys, like the cool kids are doing
"       Forcing this shit into my muscle memory
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

"       CTAGS
"let     g:easytags_dynamic_files = 1
"let     g:easytags_by_filetype = '~/.vim/tags'
"let     g:easytags_autorecurse = 1
"let     g:easytags_include_members = 1

highlight LineNr ctermfg=darkgrey guifg=#555555
