source ~/.bower_components/vimrc/vimrcs/basic.vim
source ~/.bower_components/vimrc/vimrcs/filetypes.vim
source ~/.bower_components/vimrc/vimrcs/extended.vim

" https://github.com/junegunn/vim-plug
call plug#begin( '~/.vim/plugged' )
	Plug 'https://github.com/junegunn/vim-easy-align.git'
	Plug 'https://github.com/ervandew/supertab.git'
	Plug 'https://raw.githubusercontent.com/genoma/vim-less/master/syntax/less.vim'
	Plug 'http://www.vim.org/scripts/download_script.php?src_id=19394'
call plug#end()

set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set smartindent
set number
set autowriteall

set <Home>=[29~
set <End>=[31~
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
