set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'uarun/vim-protobuf'
Plugin 'sprsquish/thrift.vim'
Plugin 'funorpain/vim-cpplint'
Plugin 'Lokaltog/vim-powerline'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set bg=dark
set ruler
set cindent
set nocompatible
set tags=tags;
set ts=2
set sw=2
set bs=2
set et
set hlsearch
set encoding=utf-8
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set term=xterm-256color
let g:Powerline_symbols = 'fancy'

" colorscheme solarized

nmap <F7> :make<CR>:copen<CR><C-W><C-P>
nmap <F8> :call Cpplint()<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
