" Plugin module https://github.com/junegunn/vim-plug
" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')
"
" Add your plugins here...
"
" Initialize plugin system
call plug#end()

source $HOME/.config/nvim/colemak.vim

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set noexpandtab

au BufNewFile,BufRead *.yaml.template set filetype=yaml
au FileType yaml set expandtab
au FileType groovy set expandtab
au FileType python set expandtab
