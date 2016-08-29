call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'myusuf3/numbers.vim'

" Add plugins to &runtimepath
call plug#end()

"Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/3.8.1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/3.8.1/lib/clang'

" For numbers.vim
set number

" Force nvim to source .nvimrc
set exrc

" Code style
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)
