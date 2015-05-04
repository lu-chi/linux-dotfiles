syntax enable
set background=dark
set backspace=indent,eol,start
set laststatus=2
set number 
set hlsearch
set nowrap

"hi CursorColumn ctermbg=DarkGrey

set cul cuc
if &bg == 'dark'
    hi CursorLine gui=NONE guibg=#333333
else
    hi CursorLine gui=NONE guibg=#CCCCCC
endif

"hi! link CursorColumn CursorLine
hi CursorColumn ctermbg=DarkGrey

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set paste

"hi CursorLine guibg=#222222 gui=none
"hi LineNr ctermfg=DarkMagenta guifg=#2b506e guibg=#000000

"set cursorline
"set cursorcolumn

"hi CursorLine ctermbg=8 "ctermfg=15 "8 = dark gray, 15 = white
"hi Cursor ctermbg=15 ctermfg=8

"hi CursorColumn ctermbg=DarkGrey

" Default Colors for CursorLine
"highlight  CursorLine ctermbg=Yellow ctermfg=None

" Change Color when entering Insert Mode
"autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red

" Revert Color to default when leaving Insert Mode
"autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None
