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
" :%s/<Ctrl-V><Ctrl-M>/<Ctrl-V><Ctrl-M>/g - fix files that are all on one line
" 
" split
" :split or :vsplit
" ctrl-w-movement - move between windows
" ctrl-w-minus - reduce size of current window
" ctrl-w-plus - increase size of current window
"
" copy to windows clipboard from cygwin
" '<,'>w !cat > /dev/clipboard
"
" fold
" za - toggle fold
" zM - fold everything
" zR - unfold everything
" ********** configuration **************

"general
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
set nowrap "don't wrap lines
set list listchars=tab:->,eol:$

"indentation
set tabstop=2 "tabs
set autoindent
set smartindent
set shiftwidth=2

"autocomplete filenames to the longest possible name, show additional matches in status bar
"usage - :e **/partialFileName <tab>
set wildmode=longest:full
set wildmenu

"folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" mappings
noremap <F2> :lvimgrep  **/*<Left><Left><Left><Left><Left>
imap jk <Esc>
