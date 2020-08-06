".vimrc -> /.config/nvim/init.vim for nvim

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

call glaive#Install()

augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END

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
map <C-_> :call NERDComment(0, "toggle")<CR>
let NERDTreeShowHidden=1

