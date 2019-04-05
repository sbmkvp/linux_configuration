" Setting the compatibility
set nocompatible
filetype off

" Load vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'tpope/vim-surround'
Plugin 'eiginn/netrw'
Plugin 'jalvesaq/Nvim-R'
call vundle#end()

" File type detection
filetype plugin indent on
syntax on

" Partial fuzzy file search
set path+=**

" Command line and menu looks
set laststatus=1
set history=10000

" Typing area
set backspace=indent,eol,start
set background=light
set autoindent breakindent smartindent cindent
set ignorecase smartcase
set sidescrolloff=15 scrolloff=15
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set nowrap

" Highlighting the last column in red and cursor column
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%81v./
map hol :highlight OverLength ctermbg=darkred ctermfg=grey<CR>:match OverLength /\%81v./<CR>
map hnl :highlight clear OverLength<CR>


" Key remaps
imap jk <Esc>
nnoremap ; :

" Working with buffers
map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b

" Git gutter settings
map git :GitGutterToggle<CR>

" R-Mode customisations
nmap ro <leader>rf
nmap ls <leader>rl
nmap <C-l> <leader>rr
vmap <C-@> <Plug>RDSendSelection
nmap <C-@> <Plug>RDSendLine
