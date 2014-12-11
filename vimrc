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

set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set smartindent
set number
set autowriteall

set <Home>=[29~
set <End>=[31~
