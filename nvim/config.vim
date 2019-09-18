" indent line-breaks at the same level as code
set breakindent

" make searching case insensitive
set ignorecase

" ... unless the query has capital letters.
set smartcase 

"mouse
set mouse=a

" some formatting options
set showmatch                      " Show matching brackets.
set number                         " Show the line numbers on the left side.
set formatoptions+=o           " Continue comment marker in new lines.
set tabstop=8           " Render TABs using this many spaces.
set shiftwidth=8           " Indentation amount for < and > commands
set clipboard=unnamedplus " use system clipboard.
set listchars=tab:\|\ ,trail:·
set list

"match brackets
hi MatchParen    cterm=reverse ctermfg=NONE ctermbg=NONE
set colorcolumn=80
set cursorline                    " highlight current line

"make vim go a bit faster
set synmaxcol=128
syntax sync minlines=256
set lazyredraw
set re=1

"Dynamic line number
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"split default
set splitbelow
set splitright

" if hidden is not set, TextEdit might fail.
set hidden

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
colorscheme base16-material-darker
let g:rainbow_active = 1

hi ActiveWindow ctermbg=None ctermfg=None
hi InactiveWindow ctermbg=darkgray ctermfg=gray guibg=#282c34
set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
