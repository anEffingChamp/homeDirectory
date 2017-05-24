source ~/.libraries/vimrc/vimrcs/basic.vim
source ~/.libraries/vimrc/vimrcs/filetypes.vim
source ~/.libraries/vimrc/vimrcs/extended.vim

" https://github.com/junegunn/vim-plug
call plug#begin( '~/.vim/plugged' )
	Plug 'https://github.com/junegunn/vim-easy-align.git'
	Plug 'https://github.com/ervandew/supertab.git'
    "Plug 'https://github.com/tpope/vim-haml.git'
	"Plug 'https://github.com/genoma/vim-less.git'
	Plug 'https://github.com/scrooloose/syntastic.git'
call plug#end()

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set number
set autowriteall

autocmd BufWritePre,BufRead *.php :%s/\s\+$//e | retab

syntax on
filetype on
let php_html_in_strings=1
let php_html_in_heredoc=1

set <Home>=[29~
set <End>=[31~
set foldmethod=indent
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight extraWhiteSpace ctermbg=darkgreen guibg=darkgreen
match OverLength /\%81v.\+/
match extraWhiteSpace /\s\+$/
" https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_php_checkers = ['phpcs','php']
let g:syntastic_javascript_checkers = ['jshint']
