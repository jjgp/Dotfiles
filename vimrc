" Force vim to source .vimrc
set exrc

" Restrict some non-default .vimrc files commands 
set secure

" Highlighting for over 80 and 150 characters
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

" backspace over everything in insert mode
set backspace=indent,eol,start

