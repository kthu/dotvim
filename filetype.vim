autocmd BufNewFile,BufRead *.cup setf cup
autocmd BufNewFile,BufRead *.lex setf cup
autocmd BufNewFile,BufRead *.jlex setf cup
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.fish set ft=fish
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
autocmd! BufNewFile,BufRead *.js setlocal ft=javascript shiftwidth=4
autocmd! BufNewFile,BufRead *.coffee setlocal ft=coffeescript shiftwidth=2

" Omnicomplete settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

autocmd FileType text,markdown set ts=4|set sw=4|set et|set si|set tw=80
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
