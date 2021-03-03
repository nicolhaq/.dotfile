"move line and block
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"bette navigation
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Open.terminal app
noremap <silent> <F2> :LazyGit <CR>
noremap <silent> <f3> :FloatermNew --name=ranger ranger <CR>

"" Toggle terminal on/off (neovim)
let g:floaterm_keymap_toggle = '<C-t><C-t>'
let g:floaterm_keymap_new = '<C-t><C-n>'
let g:floaterm_keymap_next = '<C-t><C-l>'
let g:floaterm_keymap_prev = '<C-t><C-h>'
"plugins

"easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
"
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"vim-clap maping
nnoremap <silent> <leader>g  :<C-u>Clap grep2<CR>
nnoremap <silent> <leader>b  :<C-u>Clap buffers<CR>
nnoremap <silent> <leader>f  :<C-u>Clap files<cr>
