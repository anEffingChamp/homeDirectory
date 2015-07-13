source ~/.libraries/vimrc/vimrcs/basic.vim
source ~/.libraries/vimrc/vimrcs/filetypes.vim
source ~/.libraries/vimrc/vimrcs/extended.vim

" https://github.com/junegunn/vim-plug
call plug#begin( '~/.vim/plugged' )
	Plug 'https://github.com/junegunn/vim-easy-align.git'
	Plug 'https://github.com/ervandew/supertab.git'
	Plug 'https://github.com/genoma/vim-less.git'
	Plug 'https://github.com/scrooloose/syntastic.git'
call plug#end()

set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set smartindent
set number
set autowriteall

syntax on
filetype on
au BufNewFile,BufRead *.tpl set filetype=php

set <Home>=[29~
set <End>=[31~
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_html_tidy_exec = 'tidy5'
