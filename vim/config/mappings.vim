" Make "," the leader key
let mapleader = ","

" Easy ESC in insert mode
inoremap jk <esc>

" Remove "Q"
nnoremap Q <Nop>

" Split screens
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Rename the current file
nnoremap <Leader>r :call RenameFile()<cr>

" Promote to let
nnoremap <Leader>p :call PromoteToLet()<cr>

" Powerful arrow keys
call SetArrowKeysAsTextShifters()

" Fast movement
noremap <C-j> 8j
noremap <C-k> 8k

" Run the current test
nmap <Leader>f <Plug>MuxRunFile

" Run the current test line
nmap <Leader>d <Plug>MuxRunLine

" Run everything from the current test type
nmap <Leader>s <Plug>MuxRunAll

" Run the whole test case
nnoremap <Leader>w :call RunTests()<CR>

" Send ctrl-c
nnoremap <Leader>x :MuxSend C-c<CR>

" Previous buffer
nnoremap <silent> [b :BufSurfBack<CR>

" Next buffer
nnoremap <silent> ]b :BufSurfForward<CR>

" Tabularize =
nnoremap <Leader>ae :Tabularize /=<CR>
vnoremap <Leader>ae :Tabularize /=<CR>

" Tabularize :
nnoremap <Leader>ar :Tabularize /:<CR>
vnoremap <Leader>ar :Tabularize /:<CR>

" Tabularize |
nnoremap <Leader>at :Tabularize /\|<CR>
vnoremap <Leader>at :Tabularize /\|<CR>

" Command-T clear cache
nnoremap <Leader>q :CommandTFlush<CR>

" Toggle comment
map <Leader><Leader> <plug>NERDCommenterToggle<CR>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Vim-Easymotion
let g:EasyMotion_do_mapping = 0
nmap m <Plug>(easymotion-overwin-f)
nmap m <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

:imap jj <Esc>

"nmap <silent> <leader>t :TestNearest<CR>
"nmap <silent> <leader>T :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
"nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>
"let test#javascript#mocha#file_pattern = 'specs\.jsx'
"let test#javascript#mocha#executable = 'mocha'
"let test#filename_modifier = ':p'
