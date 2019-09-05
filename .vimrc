" Switch compatibility and filetype off
set nocompatible
filetype off

" Load Plugings through vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " Plugin manager
Plugin 'tomtom/tcomment_vim' " Commenting lines and selections
Plugin 'eiginn/netrw' " File manager
Plugin 'jalvesaq/Nvim-R' " R mode
Plugin 'junegunn/goyo.vim' " Writing mode
Plugin 'junegunn/limelight.vim' " highlight current paragraph
Plugin 'lervag/vimtex' " Latex mode
Plugin 'sbmkvp/vim-colour-scheme' " My Own Colorscheme
Plugin 'townk/vim-autoclose' " Close the paranthesis and tags
Plugin 'tpope/vim-surround' " Surround stuff with things
Plugin 'airblade/vim-gitgutter' " Show git changes for each line
Plugin 'tpope/vim-fugitive' " Show git changes for each line
Plugin 'dhruvasagar/vim-table-mode' " Making tables in vim
Plugin 'junegunn/fzf' " Fuzzy search files
Plugin 'junegunn/fzf.vim' " Fuzzy search files
Plugin 'vim-airline/vim-airline' " Status line
Plugin 'vim-airline/vim-airline-themes' " Status line themes
call vundle#end()

" File type detection
filetype indent on
filetype plugin on

" Syntax highlighting
syntax enable
set showmatch " Show matching paranthesis
set t_Co=256
set background=light
let g:tex_flavor='latex'

colorscheme contrast
" Highlighting the last column in red and cursor column
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%82v./
map <tab>hh :highlight OverLength ctermbg=darkred ctermfg=grey<CR>:match OverLength /\%82v./<CR>
map <tab>nh :highlight clear OverLength<CR>
set number
set relativenumber


" Read when file changed from outside
set autoread

" Partial fuzzy file search
set path+=**

" Command line and menu looks
set laststatus=1
set history=10000
set wildmenu
set noshowmode

" Typing area
set backspace=indent,eol,start
set autoindent breakindent smartindent cindent
set ignorecase smartcase
set sidescrolloff=0 scrolloff=0
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set nowrap
set whichwrap+=<,>,h,l

" Delete trailing white space on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Key remaps
" imap jk <Esc>
map <C-j> gj
map <C-k> gk
nnoremap ; :
set mouse=a

" Working with buffers
map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b


" Git gutter settings
map git :GitGutterToggle<CR>

" Writing mode customisations
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  highlight clear OverLength
  set wrap
  set spell
  nmap go :Goyo<CR>
  map j gj
  map k gk
endfunction

function! s:goyo_leave()
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
  highlight OverLength ctermbg=darkred ctermfg=grey
  match OverLength /\%82v./
  set nowrap
  set nospell
  nmap go :Goyo 80x100%<CR>
  unmap j
  unmap k
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

nmap go :Goyo 80x100%<CR>

" Error settings
set noerrorbells " turn off error sounds
set novisualbell " turn off error flash
set t_vb= " turn off error flash

" R mode settings
let R_assign = 0
" let g:limelight_bop = '^'
" let g:limelight_eop = '$'

map <C-p> :Files<CR>
map fi :Rg<CR>
map Fi :Ag<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.maxlinenr = ''
