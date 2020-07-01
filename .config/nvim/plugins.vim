"auto install vimplug

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	:echo getbufvar(bufid, '&buftype', 'ERROR')
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
    \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"define plugins to load
call plug#begin('~/.local/share/nvim/plugged')

"utilitys
Plug 'airblade/vim-rooter'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'takac/vim-hardtime'
Plug 'pbondoer/vim-42header'
Plug 'voldikss/vim-floaterm'

"eyecandys
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'TaDaa/vimade'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"autocomplte and code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'mhinz/vim-crates'
Plug 'tikhomirov/vim-glsl'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call coc#add_extension(
	\'coc-rust-analyzer', 'coc-pairs',
	\'coc-yank', 'coc-highlight',
	\'coc-git', 'coc-lists', 'coc-vimlsp') 

"vimade
let g:vimade = {}
let g:vimade.enablefocusfading = 1
let g:vimade.fadelevel = 0.6
au! FileType vista VimadeBufDisable

"hardtime
"let g:hardtime_default_on = 1

"rainbow
let g:rainbow_active = 1

"vim-rooter
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_patterns = ['Makefile', '.git/', '.gitignore', 'Cargo.toml']

"floaterm
let g:floaterm_position = 'center'
let g:floaterm_background = '303030'
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
"better asteris + is.vimk
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
let g:asterisk#keeppos = 1
"vimclap
autocmd FileType clap_input inoremap <silent> <buffer> <Esc> <Esc>:call clap#handler#exit()<CR>

if has('nvim')
  autocmd BufRead Cargo.toml call crates#toggle()
endif
