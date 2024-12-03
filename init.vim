colorscheme vim
set notermguicolors

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:ale_echo_msg_format = '[%severity%] %code%: %s [%linter%]'
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'

let g:black_virtualenv = '~/.pyenv/versions/neovim'
let g:python3_host_prog = '~/.pyenv/versions/neovim/bin/python3'

source ~/.vimrc
