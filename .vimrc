call plug#begin()
"Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-emoji'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'pboettch/vim-cmake-syntax'

call plug#end()


map <C-f> :FZF<CR>
nnoremap <c-j> <c-w>j 
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
map <C-_> :call NERDComment(0, "toggle")<CR>

set splitbelow
set splitright

filetype plugin indent on
syntax on
set nu
set clipboard=unnamedplus
set mouse=a
set tabstop=2
set autoindent
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartcase
set directory-=.
set t_Co=256
set number
set ruler
set background=dark
set encoding=utf-8
set wildmenu
nmap <F2> :NERDTreeToggle<CR>
let g:NERDSpaceDelims=1
let g:NERDTreeMinimalUI=2
let g:NERDTreeWinSize=25
let NERDTreeIgnore=['\.pyc$']
let NERDTreeIgnore=['\.swp$']
let NERDTreeShowHidden=1
let g:airline_theme = "solarized"
set viminfo+=n~/tmp/viminfo

