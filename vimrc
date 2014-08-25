set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/nginx.vim
catch
endtry

set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set smartindent
set number
set autowriteall

set <Home>=[29~
set <End>=[31~
