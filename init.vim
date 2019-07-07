call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf'

call plug#end()

filetype plugin indent on
set autoread
set nohlsearch
set relativenumber
syntax enable

highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

au BufRead,BufNewFile *.dart setl sw=2 sts=2 et
au BufRead,BufNewFile *.gradle setl sw=4 sts=4 et
au BufRead,BufNewFile *.re setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et
au FileType java setl sw=4 sts=4 et
au FileType javascript setl sw=2 sts=2 et
au FileType python setl sw=4 sts=4 et
au FileType swift setl sw=4 sts=4 et

