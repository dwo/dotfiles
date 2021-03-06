set encoding=utf-8

syntax enable                     " Syntax highlighting
filetype plugin on

" Presentation
set number                        " I like seeing the line numbers
set nowrap                        " It's cool, I'll scroll horizontally.
set textwidth=120                 " wrap at 120 characters
set colorcolumn=121               " highlight where lines start to get long
set list listchars=trail:·,tab:⇥· " make trailing whitespace visible

" Tabbing and Indentation
set expandtab              " use spaces instead of tabs
set softtabstop=2          " 2 space tabs
set shiftwidth=2
set tabstop=2
set autoindent             " i'm too lazy to press tab

" Searching
set wrapscan               " search the whole damn file
set ignorecase             " ignore case in searches
set smartcase              "   unless search has a capital letter
set incsearch              " search incrementally
set wildmode=longest,list  " tab completion for filenames
set suffixesadd=.rb        " suffixes for gf file search

" Filesystem
set nobackup               " Don't keep backup files
set nowritebackup            " No really
set directory=~/.vimswap/  " Single location for swap files
set autoread               " auto re-read externally changed buffers
au InsertEnter * :checkt % " check the file timestamp of the current
                           " buffer (%) when I go into Insert mode

" Status Bar
set laststatus=2           " Always show status bar

" Splits
set splitbelow             " Open splits on the bottom
set splitright             "   and on the right

" Input
set backspace=2            " ensure backspace works
set iskeyword+=-           " enable tab completion of dashed words

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

au BufWritePre *.cpp,*.scss,*.css,*.erb,*.feature,*.go,*.js,*.pp,*.py,*.rb,*.xml :call <SID>StripTrailingWhitespaces()
au BufRead *.go setlocal listchars=trail:·,tab:\ \ 

" Python Black formatting
let g:black_linelength=120
let g:black_skip_string_normalization=1
autocmd BufWritePre *.py execute ':Black'

" Terraform formatting
let g:terraform_fmt_on_save=1

" Javascript Prettier formatting
let g:prettier#autoformat_config_present=1
