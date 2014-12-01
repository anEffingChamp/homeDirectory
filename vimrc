source ~/.bower_components/vimrc/vimrcs/basic.vim
source ~/.bower_components/vimrc/vimrcs/filetypes.vim
source ~/.bower_components/vimrc/vimrcs/extended.vim

" https://github.com/junegunn/vim-plug
call plug#begin( '~/.vim/plugged' )
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'https://github.com/ervandew/supertab.git'
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
