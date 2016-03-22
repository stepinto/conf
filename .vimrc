set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'funorpain/vim-cpplint'
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/unite.vim'
Plugin 'shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'
Plugin 'sjl/gundo.vim'
Plugin 'sprsquish/thrift.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'uarun/vim-protobuf'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

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
set term=xterm-256color
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'powerlineish'
let g:vimshell_prompt = 'vimshell $ '
let g:ycm_confirm_extra_conf = 0

" colorscheme solarized
syntax on

nmap <F7> :make<CR>:copen<CR><C-W><C-P>
nmap <F8> :call Cpplint()<CR>
nmap <F3> :Unite -start-insert file_rec/async:!<CR>
nmap gd :YcmCompleter GoTo<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Let command mode support emacs style movemenet keys
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" GUI options
set guioptions=a
