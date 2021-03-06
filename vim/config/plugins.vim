" Powerline symbols
let g:Powerline_symbols = 'fancy'

" NERDTree use minimal UI
let NERDTreeMinimalUI = 1

" NERDTree ignore list
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.DS_Store']

" Fancy NERDTree
let NERDTreeDirArrows = 0

" Show hidden files
let NERDTreeShowHidden = 1

" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

let g:AutoPairs = {}

" Command-T show dot files
let g:CommandTAlwaysShowDotFiles = 1

" Top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Command-T settings for iTerm
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

let g:javascript_enable_domhtmlcss = 1
