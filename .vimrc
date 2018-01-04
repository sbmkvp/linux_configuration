filetype plugin indent on
syntax on
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set number
nnoremap ; :
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set cindent
set ignorecase
set smartcase
command! -nargs=+ Silent execute 'silent <args>' | redraw!
set noerrorbells visualbell t_vb=
map <C-L> yy:echo system("screen -S $STY -p R -X stuff ".shellescape(@"))<CR>j
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%82v./
highlight cursorcolumn ctermbg=darkgrey
