syntax on
set bg=dark
set ruler
set cindent
set nocompatible
set tags=tags;
set ts=4
set sw=4
set bs=2
set et
set hlsearch
call pathogen#infect()
nmap <F7> :make<CR>:copen<CR><C-W><C-P>
au BufRead,BufNewFile *.thrift set filetype=thrift
au BufRead,BufNewFile *.cup set filetype=cup
au! Syntax thrift source ~/.vim/syntax/thrift.vim
au! Syntax cup source ~/.vim/syntax/cup.vim
au FileType javascript,html set ts=2 sw=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
