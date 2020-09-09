" Vladimir's neovim config
"

let g:plugged_home = '~/.config/nvim/plugged' " manage plugins with vim-plug

" List plugins
call plug#begin(g:plugged_home)

" General
Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold' " better folding
Plug 'Raimondi/delimitMate' " automatically close brackets and quotes
Plug 'lervag/vimtex'

" From vimfromscratch
Plug 'preservim/nerdcommenter' " commentaries
Plug 'dense-analysis/ale'

" vim-wiki
Plug 'vimwiki/vimwiki'

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" writing mode
Plug 'junegunn/goyo.vim' " text-focus mode
Plug 'reedes/vim-pencil' " better word wrap

call plug#end()

" general 
set nocompatible " better safe than sorry
filetype plugin on
syntax on
set number relativenumber " relative line numbers
set encoding=utf-8
set splitright
set splitbelow
set ruler
set ls=2 " show status bar
set scrolloff=5 " lines to scroll
set noswapfile
set nobackup
set nowritebackup
set mouse=a " do not select line numbers with mouse
set ignorecase " ignore case when search
set smartcase " if upper case in a search querry, do not ignore the case
set foldmethod=indent " folding
set foldlevel=99 " folding
set clipboard=unnamedplus " yank to global clipboard
nnoremap <space> za " fold with a spacebar instead of za

" indention
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab 
set autoindent

" vim-wiki
let g:vimwiki_list = [{'path': '/Users/vlad/Yandex.Disk.localized/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding = 'expr'

" NERDTree
map <F3> :NERDTreeFind<CR> " f3 to show nerd tree
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

" Powerline
let g:airline#extensions#tabline#enabled = 1 " have tabs in upper bar

" LaTeX, R Markdown and Markdown
map <F5> :w!<CR>:!makepdf<Space><c-r>%<CR>
let g:tex_flavor = 'latex'

" prose-related
let g:pencil#wrapModeDefault = 'soft'
map <F12> :Goyo<CR>:TogglePencil<CR>

" python
let g:python3_host_prog = '/usr/local/bin/python3'
