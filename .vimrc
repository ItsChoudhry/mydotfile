".vimrc -> /.config/nvim/init.vim for nvim

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

call glaive#Install()

augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
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
highlight clear SignColumn


nmap <Leader>F :Files<CR>
nmap <Leader>h :History<CR>
nmap <Leader>f :Ag<CR>

map <C-_> :call NERDComment(0, "toggle")<CR>

let g:coc_global_extensions = [ 'coc-python', 
  \ 'coc-pairs',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-snippets' ]
" For cpp projects copy compile_commands.json to root of project

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
