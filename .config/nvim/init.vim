" Vladimir's neovim config
"

let g:python3_host_prog = '/opt/anaconda3/bin/python'
let g:plugged_home = '~/.config/nvim/plugged' " vim-plug как менеджер плагинов

" Plugins List

call plug#begin(g:plugged_home)

"Plugins

Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold' " better folding
Plug 'Raimondi/delimitMate' " automatically close brackets and quotes
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" general 

syntax on
syntax enable
set number relativenumber " relative line numbers
set nu rnu " hybrid line numbers
" set tabstop=4
" set shiftwidth=0
set encoding=utf-8
set splitright
set splitbelow
set ruler
set ls=2 " всегда показывать статус-бар
set scrolloff=5 " количество строк при скролле
set noswapfile " нет свопу
set nobackup
set nowritebackup
set mouse=a " не выделять номера строк мышкой
set ignorecase " игнорировать регистр при поиске
set smartcase
set foldmethod=indent " folding
set foldlevel=99 " folding
set clipboard=unnamedplus " yank to global clipboard
nnoremap <space> za " fold with a spacebar instead of za


" NERDTree
map <F3> :NERDTreeFind<CR> " f3 to show/close nerd tree
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

" Powerline
let g:airline#extensions#tabline#enabled = 1
