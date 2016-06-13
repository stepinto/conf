set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'funorpain/vim-cpplint'
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/unite.vim'
Plugin 'shougo/vimproc.vim'
Plugin 'sjl/gundo.vim'
Plugin 'sprsquish/thrift.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'uarun/vim-protobuf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'file:///home/chaoshi/.vim/apsara_log'

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
set ts=4
set sw=4
set bs=2
set et
set nu
set hlsearch
set encoding=utf-8
if !has('nvim')
    set term=xterm-256color
endif
set laststatus=2  " always show status bar
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" let g:airline_theme = 'powerlineish'
let g:vimshell_prompt = 'vimshell $ '
let g:ycm_confirm_extra_conf = 0
let g:airline#extensions#tabline#enabled = 1

" colorscheme solarized
syntax on

nmap <F7> :make<CR>:copen<CR><C-W><C-P>
nmap <F8> :call Cpplint()<CR>
nmap <F3> :UniteWithProjectDir -start-insert file_rec/async:!<CR>
nmap <F4> :grep <cword> -r .<CR><CR>:copen<CR>
nmap gd :YcmCompleter GoTo<CR>
nmap cn :cnext<CR>
nmap cp :cprev<CR>
nmap gt :bnext<CR>
nmap gT :bprev<CR>

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
set makeprg=nice\ /usr/ali/bin/python\ /home/chaoshi/scons/scons.py\ -U\ -j24

" Highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" Enable python plugin in NeoVim
if has('nvim')
  runtime! plugin/python_setup.vim
endif

set mouse=v
