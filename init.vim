colorscheme vim
set notermguicolors
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:black_virtualenv = '~/.pyenv/versions/neovim'
let g:python3_host_prog = '~/.pyenv/versions/neovim/bin/python3'
source ~/.vimrc
