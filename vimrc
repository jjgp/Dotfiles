" Force vim to source .vimrc
set exrc

" Restrict some non-default .vimrc files commands 
set secure

" Vundle
set nocompatible
filetype off

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" Vundle Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'L9'
Plugin 'myusuf3/numbers.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'keith/swift.vim'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

" For numbers.vim in vim 7.4
set number

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Airline Theme
let g:airline_theme='light'

" backspace over everything in insert mode
set backspace=indent,eol,start

