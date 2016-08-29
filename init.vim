call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer' }
Plug 'myusuf3/numbers.vim'

" Add plugins to &runtimepath
call plug#end()

" For numbers.vim
set number

" Force nvim to source .nvimrc
set exrc
