"auto install vimplug

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
    \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"define plugins to load
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-rooter'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/is.vim'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'scrooloose/nerdcommenter'
Plug 'TaDaa/vimade'
Plug 'tpope/vim-fugitive'
Plug 'takac/vim-hardtime'
Plug 'pbondoer/vim-42header'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call coc#add_extension(
	\'coc-rls', 'coc-pairs',
	\'coc-yank', 'coc-highlight',
	\'coc-git', 'coc-lists',
	\'coc-ccls', 'coc-vimlsp') 
"vimade
let g:vimade = {}
let g:vimade.enablefocusfading = 1

"hardtime
let g:hardtime_default_on = 1

"rainbow
let g:rainbow_active = 1

"vim-rooter
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_patterns = ['Rakefile', '.git/', '.gitignore', 'Cargo.toml']

"easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
