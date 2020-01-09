"move line and block
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Open lazygit
noremap <silent> <Leader>lg :call ToggleLazyGit()<CR>

"" Toggle terminal on/off (neovim)
noremap <C-t> :call ToggleScratchTerm()<CR>
tnoremap <C-t> <Esc>:call ToggleScratchTerm()<CR>
tnoremap <C-t> <C-\><C-n>:call ToggleScratchTerm()<CR>
"plugins

"easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"vim-clap maping
nnoremap <silent> <leader>g  :<C-u>Clap grep<CR>
nnoremap <silent> <leader>b  :<C-u>Clap buffers<CR>
nnoremap <silent> <leader>f  :<C-u>Clap files<cr>
