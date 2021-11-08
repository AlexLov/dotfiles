set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set noexpandtab

au BufNewFile,BufRead *.yaml.template set filetype=yaml
au FileType yaml set expandtab
au FileType groovy set expandtab
au FileType python set expandtab
