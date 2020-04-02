".vimrc -> /.config/nvim/init.vim for nvim

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'pboettch/vim-cmake-syntax'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'ycm-core/YouCompleteMe' " ~/.config/nvim/plugged/YouCompleteMe
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

call glaive#Install()

augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END

nnoremap <c-j> <c-w>j 
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
map <C-_> :call NERDComment(0, "toggle")<CR>

filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ruler
set ai
:highlight Comment ctermfg=green

nmap <F2> :NERDTreeToggle<CR>
let g:NERDSpaceDelims=1
let g:NERDTreeMinimalUI=2
let g:NERDTreeWinSize=25
let NERDTreeShowHidden=1
