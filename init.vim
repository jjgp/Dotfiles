call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'myusuf3/numbers.vim'

" Add plugins to &runtimepath
call plug#end()

" YouCompleteMe


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
