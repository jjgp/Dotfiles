call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --tern-completer' }
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'

call plug#end()

set backspace=indent,eol,start
set relativenumber

" highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

au FileType json setl sw=2 sts=2 et
au FileType python setl sw=2 sts=2 et
au BufRead,BufNewFile *.re setl sw=2 sts=2 et

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" language client
set hidden

let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }

let g:LanguageClient_autoStart = 1

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>
