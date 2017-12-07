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

set termguicolors
syntax enable
colorscheme archery
let g:airline_theme='archery'

"sudo apt-get install exuberant-ctags
"in project folder run
"ctags -R --exclude=.git .
"we now have the goto definition
