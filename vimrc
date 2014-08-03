version 7.3

set     nocompatible  "be IMproved
source  ~/.vim/bundles.vim

set     encoding=utf-8

"       background:  Are we using a "light" or "dark" background?
set     background=dark

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

set     wildignore+=*/tmp/*,*.so,*.swp,*.zip

"       Scroll off. Helps overview
set     scrolloff=4
set     sidescrolloff=15

"       lazyredraw:  do not update screen while executing macros
set     lazyredraw

"       magic: use some magic in search patterns?  Certainly!
set     magic

"       number:
set     number

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

"       molokai for 256 color terminals and gui vimѕ, tango for 8 color
"       terminals
if      has("gui_running")
        colorscheme molokai
elseif  &t_Co >= 256
        colorscheme molokai
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

"       ABBREVIATIONS
iab     seperate separate
iab     teh the
iab     isntall install

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

"       :w! (and :W) saves using sudo
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
cnoreabbrev w! W

"       Disable arrow keys, like the cool kids are doing
"       Forcing this shit into my muscle memory
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

highlight LineNr ctermfg=darkgrey guifg=#555555

"       SETTINGS THAT REQUIRE EXTENSIONS
"       <leader>f to find files using ctrlp
nmap    <leader>f :CtrlPMixed<c-m>
let     g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(so|jar|class|swp|swo|log|o|pyc|jpe?g|png|gif|mo|po)$' }

"       Toggle the Tagbar
nmap    <leader>b :TagbarToggle<c-m>
let     g:tagbar_autofocus = 1
let     g:tagbar_autoclose = 1

"       Use easymotion for search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


"        Airline setup
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme = 'molokai'
