" Strip whitespace on save
au FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Jump to last cursor position unless it's invalid or in an event handler
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" PHP - 4 spaces
au FileType php setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" Makrdown - hard wrap at 80
au FileType markdown setlocal textwidth=80

" Python
au FileType python set sw=4 sts=4 et

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" CakePHP -> PHP
au BufEnter *.ctp set filetype=php

" JSON -> JavaScript
au BufEnter *.json set filetype=javascript

" TSS -> CSS
au BufEnter *.tss set filetype=css

" Handlebard handling
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" Spell checking
" au FileType cucumber,markdown,gitcommit set spell

" Typescript
autocmd FileType typescript set shiftwidth=2 tabstop=2 expandtab
