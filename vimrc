set encoding=utf-8

set number                  " I like seeing the line numbers
set nowrap                  " It's cool, I'll scroll horizontally.

syntax enable               " Syntax highlighting

set backspace=2             " ensure backspace works

set softtabstop=2           " 2 space tabs
set shiftwidth=2
set tabstop=2
set expandtab

set autoindent              " i'm too lazy to press tab

set colorcolumn=81          " highlight the 80 character line

" Searching
set wrapscan                " search the whole damn file
set ignorecase              " ignore case in searches
set smartcase               "   unless search has a capital letter
set incsearch

set nobackup                " Don't keep backup files
set nowritebackup           " No really
set directory+=,~/tmp,$TMP  " Single location for swap files

set laststatus=2            " Always show status bar

set splitbelow              " Open splits on the bottom
set splitright              "   and on the right

set wildmode=longest,list   " bash-style tab completion

set list listchars=trail:·,tab:⇥· " make trailing whitespace visible

" Don't you use those arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

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

autocmd BufWritePre *.css,*.erb,*.feature,*.js,*.md,*.pp,*.rb,*.xml :call <SID>StripTrailingWhitespaces()
