set number                  " I like seeing the line numbers

syntax enable               " Syntax highlighting

set softtabstop=2           " 2 space tabs
set shiftwidth=2
set tabstop=2
set expandtab

set autoindent              " i'm too lazy to press tab
set smartindent

set colorcolumn=80

set wrapscan                " search the whole damn file
set ignorecase              " ignore case in searches
set smartcase               "   unless search has a capital letter

set nobackup                " Don't keep backup files
set nowritebackup           " No really
set directory+=,~/tmp,$TMP  " Single location for swap files

set laststatus=2            " Always show status bar

set splitbelow              " Open splits on the bottom
set splitright              "   and on the right

set list!                   " make trailing whitespace visible
set listchars=trail:.

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre *.rb,*.js :call <SID>StripTrailingWhitespaces()

