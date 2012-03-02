version 7.3
      
"      compatible:  Let Vim behave like Vi?  Hell, no!
 set   nocompatible

"      background:  Are we using a "light" or "dark" background?
 set   background=dark

"      autoindent:  "on" as I usually write code.
 set   autoindent

"      autowrite: Automatically save modifications to files
"      when you use critical (rxternal) commands.
 set   autowrite

"      backup:  backups are for wimps  ;-)
 set   nobackup

"      backspace:  '2' is much smarter. -> "help backspace"
 set   backspace=2

"      comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
 set   comments=b:#,:%,fb:-,n:>,n:)

"      dictionary: english words first
 set   dictionary=/usr/share/dict/words

"      digraph: required for those umlauts
 set   digraph
 
"      errorbells: damn this beep!  ;-)
 set   noerrorbells

"      esckeys: allow usage of cursor keys within insert mode
 set   esckeys

"      formatoptions: Options for the "text format" command ("gq")
"                     I need all those options (but 'o')!
 set   formatoptions+=cqrt

"      hidden:
 set   hidden

"      hlsearch : highlight search - show the current search pattern This is
"      a nice feature sometimes - but it sure can get in the way sometimes
"      when you edit.
 set   nohlsearch

"      incremental ѕearch
 set   incsearch

"      smart case for searches
 set   ignorecase
 set   smartcase

"      Don't scroll off. It's confusing
 set   scrolloff=0

"      iskeyword:
"      iskeyword=@,48-57,_,192-255 (default)

"      Add the dash ('-'), the dot ('.'), and the '@' as "letters" to "words".
"      This makes it possible to expand email addresses, eg
"      guckes-www@vim.org
 set   iskeyword=@,48-57,_,192-255,-,.,@-@
"
"      joinspaces:
"      insert two spaces after a period with every joining of lines.
"      I like this as it makes reading texts easier (for me, at least).
 set   joinspaces
"
"      laststatus:  show status line?  Yes, always!
"      laststatus:  Even for only one buffer.
 set   laststatus=2
"
" [VIM5]lazyredraw:  do not update screen while executing macros
 set   lazyredraw
"
"      magic:       use some magic in search patterns?  Certainly!
 set   magic
"
"      modeline:    ...
"      Allow the last line to be a modeline - useful when
"      the last line in sig gives the preferred textwidth for replies.
"set   modeline
"set   modelines=1
"
"      number:      ...
 set   number
"
"      report: show a report when N lines were changed.
"              report=0 thus means "show all changes"!
 set   report=0
"
"      ruler:       show cursor position?  Yep!
 set   ruler
"
"      Gimme some fish!
 let   shell='fish'

"      shiftwidth:  Number of spaces to use for each
"                   insertion of (auto)indent.
 set   shiftwidth=3

"      tabstop
 set   tabstop=3

"      expandtab:   Convert the tab to spaces
 set   expandtab

"      showcmd:     Show current uncompleted command?  Absolutely!
 set   showcmd

"      showmatch:   Show the matching bracket for the last ')'?
 set   showmatch

"      showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
 set   showmode

"      suffixes:    Ignore filename with any of these suffixes
"                   when using the ":edit" command.
"                   Most of these are files created by LaTeX.
 set   suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar

"      startofline:  no:  do not jump to first character with page
"      commands, ie keep the cursor in the current column.
 set   nostartofline

"      funky statusline with included git branch info
 set   statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"      gnome-terminal hides the fact that it supports 256 colors.
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"      vitamins for 256 color terminals and gui vimѕ, tango for 8 color
"      terminals
if &t_Co >= 256 || has("gui_running")
  colorscheme vitamins
else
  colorscheme tango
endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

"      title for xterm windows:
 set   title

"      viminfo:  What info to store from an editing session
"                in the viminfo file;  can be used at next session.
 set   viminfo=%,'50,\"100,:100,n~/.viminfo
 au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"      visualbell:
 set   visualbell

"      t_vb:  terminal's visual bell - turned off to make Vim quiet!
"      Please use this as to not annoy cow-orkers in the same room.
"      Thankyou!  :-)
 set   t_vb=

"      whichwrap:
 set   whichwrap=<,>

"      wildchar  the char used for "expansion" on the command line
"                default value is "<C-E>" but I prefer the tab key:
 set   wildchar=<TAB>

"      Dont't display invisible chars
 set   nolist

"      Enable virtualedit (lets me move cursor to spots without characters)
 set   virtualedit=all

"      remove tool bar
 set   guioptions-=T  

"      remove scroll bar
 set   guioptions-=r  

"      remove menu bar
 set   guifont=Monospace

" ===================================================================
" ABbreviations
" ===================================================================
 iab alos also
 iab aslo also
 iab charcter character
 iab charcters characters
 iab exmaple example
 iab shoudl should
 iab seperate separate
 iab teh the

"  My address (Email)
"  makes it easy to type them without typos  ;-)
 iab EMAIL Kjetil.Thuen@gmail.com
 iab MYNAME Kjetil Thuen

"  Current date and time
 iab YDATE <C-R>=strftime("%a %b %d %T %Z %Y")<CR>
" Example: Tue Dec 16 12:07:00 CET 1997


" ===================================================================
" Mappings
" ===================================================================

 let mapleader = ","

" ===================================================================
" Mappings for normal mode
" ===================================================================

" Whenever I paste some text into VIM I have to
" toggle from "nopaste" to "paste" and back again:
 nmap <leader>p :set paste!<c-m>:set paste?<c-m>
 
" Remove carriage return symbols. for those annoying Windows files
 nmap <leader>d :%s/\r//g<c-m>

 " Find files using fuzzy finder
 nmap <leader>f :FufCoverageFile<c-m>

" ===================================================================
" Mappings for visual mode
" ===================================================================

"     ,dr = decode/encode rot13 text
 vmap <leader>dr :!tr A-Za-z N-ZA-Mn-za-m

" Give the URL under the cursor to Netscape
 vmap <leader>net :!netscape -remote "openurl <C-R>""

 " HTML Tidy, http://tidy.sourceforge.net/
 "  " select xml text to format and type ,tidy
 vmap <leader>tidy :%!tidy -q -i -asxml -f /dev/null<CR>

" ===================================================================
" AutoCommands
" ===================================================================
"
" just load the main syntax file when Vim was compiled with "+syntax"
 if has("syntax")
   " The following sources the main syntax file,
   " ie. "$VIM/syntax/syntax.vim", see ":help :syn-on":
   syntax on
 endif

" From the GNOME coding style document.
 if !exists("autocommands_loaded")
   let autocommands_loaded = 1
   augroup C
      autocmd BufRead *.c set cindent
   augroup END
 endif

" For mail message writing
augroup Mail
 au!
 au FileType mail set tw=70 fo=tcrq
 au FileType mail set comments+=n:\|
augroup END

filetype plugin indent on

call pathogen#infect() 

