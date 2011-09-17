set nocompatible 

set number                  " I like seeing the line numbers

set syntax                  " Syntax highlighting

set softtabstop=2           " 2 space tabs
set shiftwidth=2
set tabstop=2
set expandtab

set autoindent              " i'm too lazy to press tab
set smartindent

set textwidth=80            " don't go below 50!
set colorcolumn=+1

set wrapscan                " search the whole damn file
set ignorecase              " ignore case in searches
set smartcase               "   unless search has a capital letter

set nobackup                " Don't keep backup files
set nowritebackup           " No really
set directory+=,~/tmp,$TMP  " Single location for swap files

set laststatus=2            " Always show status bar

set splitbelow              " Open splits on the bottom
set splitright              "   and on the right
