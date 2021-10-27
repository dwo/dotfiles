set encoding=utf-8

syntax enable                     " Syntax highlighting
filetype plugin on
set modeline                      " Respect modelines

" Presentation
set number                        " I like seeing the line numbers
set nowrap                        " It's cool, I'll scroll horizontally.
set textwidth=120                 " wrap at 120 characters
set colorcolumn=121               " highlight where lines start to get long
set list listchars=trail:·,tab:⇥· " make trailing whitespace visible

" Tabbing and Indentation
set autoindent             " Good to have when working with plain text
filetype plugin indent on
set shiftwidth=2
set softtabstop=2
set expandtab              " use spaces instead of tabs
set smarttab               " use tabs where appropriate (eg. Makefiles)

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

function! <SID>StripTrailingWhitespaces() abort
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

augroup TrailingWhitespace
  autocmd!
  autocmd BufWritePre *.cpp,*.scss,*.css,*.go,*.xml :call <SID>StripTrailingWhitespaces()
augroup END

augroup Bazel
  autocmd!
  autocmd FileType bzl setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

augroup Git
  autocmd!
  autocmd FileType gitcommit setlocal textwidth=120
augroup END

augroup Golang
  autocmd!
  autocmd BufRead *.go setlocal listchars=trail:·,tab:\ \ 
augroup END

augroup Make
  autocmd!
  autocmd FileType make setlocal tabstop=2 softtabstop=2 noexpandtab
augroup END

" Javascript Prettier formatting
let g:prettier#autoformat_config_present=1

augroup Python
  autocmd!
  let g:black_linelength=120
  let g:black_skip_string_normalization=1
  autocmd BufWritePre *.py execute ':Black'
augroup END

" Terraform formatting
let g:terraform_fmt_on_save=1
