"general
set ignorecase
set history=100
set so=7 "autoscroll 7 lines from the top and bottom
set ruler
set backspace=2
set noswapfile

"appearance
set t_Co=256
color koehler
syntax on
set synmaxcol=160
set number
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

fu! SaveSession()
	execute 'call mkdir(~/.vim)'
	execute 'mksession! ~/.vim/session.vim'
endfunction

fu! RestoreSession()
execute 'so ~/.vim/session.vim'
if bufexists(1)
	for l in range(1, bufrn('$'))
		if bufwinnr(l) == -1
			exec 'sbuffer ' . l
		endif
	endfor
endif
endfunction

autocmd VimLeave * call SaveSession()
autocmd VimEnter * call RestoreSession()
