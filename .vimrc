set nocompatible              " be iMproved, required
filetype off                  " required

nnoremap <f2> :NERDTreeToggle<Enter>

"set rtp+=$HOME/.vim/bundle/Vundle.vim/
"call vundle#begin('$HOME/.vim/bundle/')

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Badacadabra/vim-archery'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = 'C:/Users/choudhry.amjad/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

syntax enable
set background=dark
colorscheme solarized
set encoding=utf-8
colorscheme archery
let g:airline_theme='archery'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"install exuberant-ctags
"in project folder run
"ctags -R --exclude=.git .
"we now have the goto definition
