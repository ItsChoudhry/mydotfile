".vimrc -> /.config/nvim/init.vim for nvim

call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set splitbelow
set splitright
set clipboard+=unnamedplus
highlight Comment ctermfg=green


map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

