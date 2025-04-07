set notermguicolors

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:ale_echo_msg_format = '[%severity%] %code%: %s [%linter%]'
let g:ale_fix_on_save = 1

source ~/.vimrc
