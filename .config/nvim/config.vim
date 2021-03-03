set breakindent

" make searching case insensitive
set ignorecase

" ... unless the query has capital letters.
set smartcase 
set inccommand=nosplit

"auto refresh buffer
set autoread
"mouse
set mouse=a
"font
set guifont=Fira\ Code\ Nerd\ Font\ retina:16

" some formatting options
set showmatch                  " Show matching brackets.
set number                     " Show the line numbers on the left side.
set formatoptions+=o           " Continue comment marker in new lines.
set tabstop=4                  " Render TABs using this many spaces.
set shiftwidth=4               " Indentation amount for < and > commands
set clipboard=unnamedplus      " use system clipboard.
set listchars=tab:\|\ ,trail:· " show tab en trailing characters
set list
let mapleader = "\<Space>"
"match brackets
hi MatchParen    cterm=reverse ctermfg=NONE ctermbg=NONE
set colorcolumn=80
set tw=80
set formatoptions+=t
"make vim go a bit faster
syntax sync minlines=256
set lazyredraw
set re=1

"undoflie
set undofile

"Dynamic line number
"set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

augroup lineHighlight
    autocmd!
    autocmd WinEnter,FocusGained * set cul
    autocmd WinLeave,FocusLost * set nocul
augroup END

"split default
set splitbelow
set splitright

" if hidden is not set, TextEdit might fail.
set hidden
"hide staus bar mode
set noshowmode
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"set theme
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
let base16colorspace=256
colorscheme base16-material-darker
