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
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%82v./
highlight cursorcolumn ctermbg=darkgrey
map <C-L> "kyy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@k),"$"))<CR>j
vmap <C-L> "xy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@x."\n"),"$"))<CR>j
map <C-M><C-M> :echo system("screen -S $STY -p R -X stuff ".shellescape("\014"))<CR>
map <C-K><C-K> :echo system("screen -S $STY -p R -X stuff ".shellescape("source('".expand('%:t')."')\n"))<CR>
set t_Co=256
