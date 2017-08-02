call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --tern-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'keith/swift.vim'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'rizzatti/dash.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'majutsushi/tagbar'

call plug#end()

" numbers.vim
set number

" Force vim to source .vimrc
set exrc
set secure

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" easytags
let g:easytags_suppress_ctags_warning = 1

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

" Backspaceo
set backspace=indent,eol,start

" indenting
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
