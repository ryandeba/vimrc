" ************ useful commands ************
" vim.runpaint.org/toc for more
"
" searching for text in a file
" /somesearchtext
" n - next match
" N - previous match
"
" autcomplete word in file
" ctrl-n
" 
" undo/redo
" u - undo
" ctrl-r - redo
"
" open file
" :e **/MyFileNameHere
" hit tab to autocomplete file name
" 
" grep
" :vimgrep 'my search text here' **/*
" use :copen, :cnext, :cprev, :cclose to show/nav/hide results
"
" syntax
" :set syntax=javascript
"
" tabs
" :tabnew - open a new tab
" :tabprev or :tabp - go to previous tab
" :tabnext or :tabn - go to next tab
" :tabn3 - go to the 3rd tab
" 
" jump to line
" 42G
" 42gg
" :42<CR>
"
" increment number
" ctrl-a
"
" search and replace
" :%s/find/replace
" :%s/find/replace/g - global
" :2,20s/find/replace/g - replace only lines 2 - 20
" 
" split
" :split or :vsplit
" ctrl-w-movement - move between windows
" ctrl-w-minus - reduce size of current window
" ctrl-w-plus - increase size of current window

" ********** configuration **************

"general
"cd /var/www "working directory
set ignorecase
set history=100
set so=7 "autoscroll 7 lines from the top and bottom
set ruler
"set incsearch "browser-like search
set si "smart indent

"appearance
color koehler
syntax on
set number "turn line numbers on
"set guifont=Ubuntu_Mono:h12:cANSI
"set guioptions=mr
set nowrap "don't wrap lines
set list "show whitespace
"set cursorline "highlight cursor line
"hi cursorline guibg=#333333
"set cursorcolumn "highlight cursor column
"hi cursorcolumn guibg=#333333

"indentation
set tabstop=2 "tabs
set autoindent
set smartindent
set shiftwidth=2

"autocomplete filenames to the longest possible name, show additional matches in status bar
"usage - :e **/partialFileName <tab>
set wildmode=longest:full
set wildmenu
