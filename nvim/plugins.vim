"auto install vimplug

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
    \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"define plugins to load
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'airblade/vim-rooter'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/is.vim'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'scrooloose/nerdcommenter'
Plug 'TaDaa/vimade'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call coc#add_extension(
	\'coc-rls', 'coc-pairs',
	\'coc-yank', 'coc-highlight',
	\'coc-git', 'coc-lists',
	\'coc-marketplace', 'coc-ccls',
	\'coc-vimlsp')

let g:vimade = {'enablefocusfading': 1}
