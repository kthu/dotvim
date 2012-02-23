version 7.3
      
"      compatible:  Let Vim behave like Vi?  Hell, no!
 set   nocompatible

"      background:  Are we using a "light" or "dark" background?
 set   background=light

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
 set   hlsearch

"      incremental ѕearch
 set   incsearch

"      smart case for searches
 set   ignorecase
 set   smartcase

"      scroll of a couple of lines
 set   scrolloff=5

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
"      keywordprg:  Program to use for the "K" command.
"set   keywordprg=man\ -s
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
 set   modeline
 set   modelines=1
"
"      number:      ...
 set   number
"
"      path:   The list of directories to search when you specify
"              a file with an edit command.
"              Note:  "~/.P" is a symlink to my dir with www pages
"              "$VIM/syntax" is where the syntax files are.
" set   path=.,,~/.P/vim,~/.P/vim/syntax,~/.P/vim/source,$VIM/syntax/
"
"      report: show a report when N lines were changed.
"              report=0 thus means "show all changes"!
 set   report=0
"
"      ruler:       show cursor position?  Yep!
 set   ruler
"
"      Gimme some fish!
 let shell='fish'

"      shiftwidth:  Number of spaces to use for each
"                   insertion of (auto)indent.
 set   shiftwidth=3

"      expandtab:   Convert the tab to spaces
 set    expandtab

"      shortmess:   Kind of messages to show.   Abbreviate them all!  New
"      since vim-5.0v: flag 'I' to suppress "intro message".
"  set   shortmess=at

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

"      tabstop
 set   tabstop=3

"      funky statusline with included git branch info
 set   statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

"      textmode:    no - I am using Vim on UNIX!
 set   notextmode

"      textwidth
" set   textwidth=79

"      title for xterm windows:
 set   title

"      ttyfast:     are we using a fast terminal?
"                   seting depends on where I use Vim...
 set   ttyfast

"      ttybuiltin:
 set   nottybuiltin

"      ttyscroll:      turn off scrolling -> faster!
 set   ttyscroll=1

"      ttytype:
" set   ttytype=xterm

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

"      wrapmargin:
" set   wrapmargin=1

"      Turn of the annoying wrap
" set   nowrap

"
"      writebackup:
 set nowritebackup

"      remove tool bar
 set guioptions-=T  

"      remove scroll bar
 set guioptions-=r  

"      remove menu bar
 set guioptions-=m  

"      remove menu bar
 set guifont=Monospace

" ===================================================================
" ABbreviations
" ===================================================================
" 980701: Moved the abbreviations *before* the mappings as
" some of the abbreviations get used with some mappings.
"
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


" 981210 Whenever I paste some text into VIM I have to
" toggle from "nopaste" to "paste" and back again:
 map <f3>   :set paste!<c-m>:set paste?<c-m>

" Make "gf" rebound to last cursor position (line *and* column)
 noremap gf gf`"

" ===================================================================
"
" General Editing
"
" Define "del" char to be the same backspace (saves a LOT of trouble!)
" As the angle notation cannot be use with the LeftHandSide
" with mappings you must type this in *literally*!
" map <C-V>127 <C-H>
" cmap <C-V>127 <C-H>
" the same for Linux Debian which uses 
" imap <Esc>[3~ <C-H>
" imap        <C-H>

"     ;rcm = remove "control-m"s - for those mails sent from DOS:
 cmap ;rcm %s/<C-M>//g

" ===================================================================
" Inserting Dates and Times / Updating Date+Time Stamps
" ===================================================================
"    ,L  = "Last updated" - replace old time stamp with a new one
"       preserving whitespace and using internal "strftime" command:
"      requires the abbreviation  "YDATE"
 map ,L  1G/Last update:\s*/e+1<CR>CYDATE<ESC>
 map ,,L 1G/Last change:\s*/e+1<CR>CYDATE<ESC>
" Example:
" before:  "Last update:   Thu Apr  6 12:07:00 CET 1967"
" after:   "Last update:   Tue Dec 16 12:07:00 CET 1997"
"
"    ,L  = "Last updated" - replace old time stamp with a new one
"       using external "date" command (not good for all systems):
" map ,L 1G/Last update: */e+1<CR>D:r!date<CR>kJ

" ===================================================================
" Useful stuff.  At least these are nice examples.  :-)
" ===================================================================
"     ,dr = decode/encode rot13 text
 vmap ,dr :!tr A-Za-z N-ZA-Mn-za-m

" Give the URL under the cursor to Netscape
 vmap ,net :!netscape -remote "openurl <C-R>""

 " HTML Tidy, http://tidy.sourceforge.net/
 "  " select xml text to format and hit ,x
 vmap ,x :%!tidy -q -i -asxml -f /dev/null<CR>

" ===================================================================
" Mapping of special keys - arrow keys and function keys.
" ===================================================================
" Buffer commands (split,move,delete) -
" this makes a little more easy to deal with buffers.
 map <F4>  :split<C-M>
 map <F5>  :bp<C-M>
 map <F6>  :bn<C-M>
 map <F12> :bd<C-M>

" Buffer commands (split,move,delete) -
" for Mac keyboard (Performa 5200, US keyboard)
"
 map <ESC>[19~ :split<C-M>
 map <ESC>[20~ :bp<C-M>
 map <ESC>[23~ :bn<C-M>
 map <ESC>[31~ :bd<C-M>

" ===================================================================
" AutoCommands
" ===================================================================
"
" just load the main syntax file when Vim was compiled with "+syntax"
 if has("syntax")
   " The following sources the main syntax file,
   " ie. "$VIM/syntax/syntax.vim", see ":help :syn-on":
   syntax on
   " Redefine the color for "Comment":
"   hi! Comment  term=bold  ctermfg=cyan  guifg=Blue
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
runtime! macros/matchit.vim

augroup myfiletypes
 autocmd!
 autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" Omnicomplete settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

" call pathogen#infect() 

