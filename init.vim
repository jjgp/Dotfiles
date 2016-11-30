call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'keith/swift.vim'
"Plug 'benekastah/neomake'

" Add plugins to &runtimepath
call plug#end()

" For numbers.vim
set number

" Force nvim to source .nvimrc
set exrc
set secure

" Code style
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" NERDtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

" Clipboard: http://stackoverflow.com/a/39741226
set clipboard=unnamed
