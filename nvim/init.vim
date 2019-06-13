"define plugins to load
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'kaicataldo/material.vim'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
"Plug 'liuchengxu/eleline.vim'

call plug#end()

"set theme

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme material 
let g:rainbow_active = 1

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
	\'colorscheme': 'material',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     [  'git', 'diagnostic','cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ]
	\  ],
	\  'right':[
	\     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ]
	\  ]
	\},
	\'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction'
	\ },
	\ }

" indent line-breaks at the same level as code
set breakindent

" make searching case insensitive
set ignorecase

" ... unless the query has capital letters.
set smartcase 

" some formatting options
set showmatch			" Show matching brackets.
set number			" Show the line numbers on the left side.
set formatoptions+=o		" Continue comment marker in new lines.
set tabstop=8			" Render TABs using this many spaces.
set shiftwidth=8		" Indentation amount for < and > commands
set clipboard=unnamedplus	" use system clipboard.
set listchars=tab:\|\ ,trail:·
set list
hi MatchParen guifg=NONE guibg=NONE gui=underline cterm=underline
set colorcolumn=80
set cursorline        " highlight current line
set cursorcolumn      " highlight current column


"Dynamic line number
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"move line and block
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
