" Setting the compatibilty
set nocompatible
filetype off

" Load vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sjl/badwolf'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

" File type detection
filetype plugin indent on
syntax on


set path+=**
set wildmenu
set wildmode=full
set incsearch
set laststatus=2
set history=1000

set relativenumber
set number
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set ruler
set background=dark

colorscheme badwolf
set t_Co=256

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
imap jk <Esc>
nnoremap ; :

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set breakindent
set smartindent
set cindent
set ignorecase
set smartcase
set sidescrolloff=10
set scrolloff=10

" command! -nargs=+ Silent execute 'silent <args>' | redraw!

set noerrorbells visualbell t_vb=

highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%81v./
highlight cursorcolumn ctermbg=darkgrey

map <C-J> gj
map <C-K> gk

map <C-L> "kyy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@k),"$"))<CR>j
vmap <C-L> "xy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@x."\n"),"$"))<CR>j
map <C-M><C-M> :echo system("screen -S $STY -p R -X stuff ".shellescape("source('".expand('%:t')."')\n"))<CR><CR>

map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b

" Writing mode setting
function! s:goyo_enter()
	map go :Goyo<CR>
	set nocindent
	set noautoindent
	set nosmartindent
	set spell
	set textwidth=80
	GitGutterDisable
endfunction
function! s:goyo_leave()
	map go :Goyo 85<CR>
	set spell
	set cindent
	set autoindent
	GitGutterEnable
	set nosmartindent
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
map go :Goyo 85<CR>

" Git gutter settings
map gl :GitGutterToggle<CR>
