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
Plugin 'lervag/vimtex' " Latex mode
Plugin 'sbmkvp/vim-colour-scheme' " Latex mode
Plugin 'townk/vim-autoclose' " Close the paranthesis and tags
Plugin 'tpope/vim-surround' " Surround stuff with things
Plugin 'airblade/vim-gitgutter' " Show git changes for each line
Plugin 'dhruvasagar/vim-table-mode' " Making tables in vim
call vundle#end()

" File type detection
filetype indent on
filetype plugin on

" Syntax highlighting
syntax enable
set showmatch " Show matching paranthesis
set t_Co=256
set background=light

" Highlighting the last column in red and cursor column
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%81v./
map <tab>hh :highlight OverLength ctermbg=darkred ctermfg=grey<CR>:match OverLength /\%81v./<CR>
map <tab>nh :highlight clear OverLength<CR>


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
set sidescrolloff=15 scrolloff=15
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
nmap <C-j> gj
nmap <C-k> gk
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
  set wrap
  set spell
endfunction
function! s:goyo_leave()
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
  set nowrap
  set nospell
endfunction
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

nmap go :Goyo<CR>

" Error settings
set noerrorbells " turn off error sounds
set novisualbell " turn off error flash
set t_vb= " turn off error flash


colorscheme contrast
