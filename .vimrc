set nocompatible              " be iMproved, required
filetype off                  " required


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
syntax on
let g:airline_theme='base16_spacemacs'
colorscheme archery
