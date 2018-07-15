call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible' 
Plug 'dart-lang/dart-vim-plugin'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'

call plug#end()

syntax on
filetype plugin indent on
set autochdir
set backspace=indent,eol,start
set relativenumber

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

" deoplete
let g:deoplete#enable_at_startup = 1

" LanguageClient-neovim
set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['pyls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
