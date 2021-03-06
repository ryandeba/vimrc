"general
set ignorecase
set history=100
set so=7 "autoscroll 7 lines from the top and bottom
set ruler
set backspace=2
set noswapfile
set laststatus=2
set hidden

"appearance
set t_Co=256
color koehler
syntax on
set synmaxcol=500
set number
set relativenumber
set nowrap
set list listchars=tab:->,eol:$
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236
hi Normal ctermbg=256
set hlsearch
set mps+=<:>

"indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smarttab
set expandtab

"autocomplete filenames to the longest possible name, show additional matches in status bar
set wildmode=longest:full
set wildmenu

"folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" mappings
imap jk <Esc>

let mapleader = " "
map <Leader>f :lgrep -r -i --include * 
map <Leader>e :e **/
map <Leader>E :E<CR>
map <Leader>t :tabnew<Return>
map <Leader>w :w<Return>
map <Leader>lo :lopen<Return>
map <Leader>lc :lclose<Return>
map <Leader>ln :lnext<Return>
map <Leader>lp :lprevious<Return>
set pastetoggle=<F12>

" ADD CUSTOM CHANGES HERE FOR EACH BRANCH
