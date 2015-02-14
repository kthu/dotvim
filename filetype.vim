autocmd  BufNewFile,BufRead *.cup setf cup
autocmd  BufNewFile,BufRead *.lex setf cup
autocmd  BufNewFile,BufRead *.jlex setf cup
autocmd  BufNewFile,BufRead *.fish set ft=fish
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
autocmd  BufNewFile,BufRead *.json set ft=javascript
autocmd! BufNewFile,BufRead *.js setlocal ft=javascript
autocmd! BufNewFile,BufRead *.coffee setlocal ft=coffee
autocmd! BufNewFile,BufRead *.js let g:syntastic_javascript_checkers = ['jslint']
autocmd  BufNewFile,BufRead *.html set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim

" Omnicomplete settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

autocmd FileType text,markdown set et|set si|set tw=80
autocmd FileType ruby,eruby,yaml set ai et

" Remove trailing whitespace
autocmd FileType c,cpp,java,php,coffee,clojure,clojurescript autocmd BufWritePre <buffer> :%s/\s\+$//e
