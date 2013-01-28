set encoding=utf-8

syntax enable                     " Syntax highlighting

" Presentation
set number                        " I like seeing the line numbers
set nowrap                        " It's cool, I'll scroll horizontally.
set colorcolumn=81                " highlight the 80 character line
set list listchars=trail:·,tab:⇥· " make trailing whitespace visible

" Tabbing and Indentation
set softtabstop=2                 " 2 space tabs
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent                    " i'm too lazy to press tab

" Searching
set wrapscan                      " search the whole damn file
set ignorecase                    " ignore case in searches
set smartcase                     "   unless search has a capital letter
set incsearch                     " search incrementally
set wildmode=longest,list         " bash-style tab completion for filenames
set suffixesadd=.rb               " suffixes for gf file search

" Backup/Swap
set nobackup                      " Don't keep backup files
set nowritebackup                 " No really
set directory=~/.vimswap//        " Single location for swap files

" Status Bar
set laststatus=2                  " Always show status bar

" Splits
set splitbelow                    " Open splits on the bottom
set splitright                    "   and on the right

" Input
set backspace=2                   " ensure backspace works
" no arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

function! <SID>StripTrailingWhitespaces()
    " save last search, and cursor position.
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
