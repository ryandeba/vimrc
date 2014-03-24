"general
set ignorecase
set history=100
set so=7 "autoscroll 7 lines from the top and bottom
set ruler
set backspace=2
set noswapfile
set laststatus=2

"appearance
set t_Co=256
color koehler
syntax on
set synmaxcol=160
set number
set relativenumber
set nowrap
set list listchars=tab:->,eol:$
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236

"indentation
set tabstop=2 "tabs
set autoindent
set smartindent
set shiftwidth=2

"autocomplete filenames to the longest possible name, show additional matches in status bar
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

let mapleader = " "
map <Leader>e :e **/
map <Leader>t :tabnew<Return>
map <Leader>w :w<Return>

fu! SaveSession()
	execute 'call mkdir(~/.vim)'
	execute 'mksession! ~/.vim/session.vim'
endfunction

autocmd VimLeave * call SaveSession()
