" OS
let os = substitute(system('uname'), "\n", "", "")

" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set nocompatible
set ttyfast
set lazyredraw
set backspace=2

set clipboard=unnamed

" Pathogen
"filetype off
"filetype plugin on

" Include the hot stuff
runtime config/settings.vim
runtime config/plugins.vim
runtime config/functions.vim
runtime config/commands.vim
runtime config/autocmd.vim
runtime config/mappings.vim

" GUI stuff
if has('gui_running')
  runtime config/gui.vim
endif

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

if has("autocmd")
  au FileType html setlocal syntax=mustache
endif

let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

let g:jsx_ext_required = 0
"let g:javascript_plugin_flow = 1

let g:flow#autoclose = 1
let g:syntastic_javascript_checkers = ['flow']
let g:syntastic_javascript_flow_exe = 'flow'
let g:flow#enable = 0

"let g:typescript_indent_disable = 1
setlocal indentkeys+=0
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Initialize minpac package manager
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-projectionist')


"call minpac#add('sheerun/vim-polyglot')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
"call minpac#add('chemzqm/vim-jsx-improve')
call minpac#add('isruslan/vim-es6')
call minpac#add('jelera/vim-javascript-syntax')
call minpac#add('w0rp/ale')
call minpac#add('elzr/vim-json')
call minpac#add('cakebaker/scss-syntax.vim')
call minpac#add('hail2u/vim-css3-syntax')

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Create convenient minpac commands for updating and cleaning plugins
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Launch Fuzzy Finder with Ctrl-P
nnoremap <C-p> :<C-u>FZF<CR>

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn
