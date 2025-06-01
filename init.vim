set notermguicolors
colorscheme vim

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:ale_echo_msg_format = '[%severity%] %code%: %s [%linter%]'
let g:ale_fix_on_save = 1
let g:ale_set_signs = 0

if has("mac")
  let arch = system("uname -m")
  if arch =~ "x86_64"
    let g:copilot_node_command = "/usr/local/opt/node@22/bin/node"
  elseif arch =~ "arm64"
    let g:copilot_node_command = "/opt/homebrew/opt/node@22/bin/node"
  endif
endif

source ~/.vimrc
