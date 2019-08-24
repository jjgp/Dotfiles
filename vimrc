call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'

call plug#end()

syntax on
filetype plugin indent on
set autochdir
set backspace=indent,eol,start
set relativenumber
let mapleader = ","

" highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

au FileType json setl sw=2 sts=2 et
au FileType java setl sw=4 sts=4 et
au FileType javascript setl sw=2 sts=2 et
au FileType python setl sw=2 sts=2 et
au BufRead,BufNewFile *.dart setl sw=2 sts=2 et
au BufRead,BufNewFile *.gradle setl sw=4 sts=4 et
au BufRead,BufNewFile *.re setl sw=2 sts=2 et

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
