call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --tern-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'keith/swift.vim'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'flazz/vim-colorschemes'
Plug 'gfontenot/vim-xcode'
Plug 'christoomey/vim-tmux-runner'
Plug 'radenling/vim-dispatch-neovim'
Plug 'rizzatti/dash.vim'

" Add plugins to &runtimepath
call plug#end()

" numbers.vim
set number

" Force nvim to source .nvimrc
set exrc
set secure

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" vim-colorschemes
colorscheme spacegray

" vim-xcode
let g:xcode_runner_command = 'VtrSendCommandToRunner! {cmd}'

" markdown
set nofoldenable

" dash.vim
:nmap <silent> <leader>d <Plug>DashSearch

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

" Clipboard: http://stackoverflow.com/a/39741226
set clipboard=unnamed

" indenting
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
