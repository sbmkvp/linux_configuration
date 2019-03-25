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
Plugin 'sedm0784/vim-you-autocorrect'
Plugin 'eiginn/netrw'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'tpope/vim-surround'
call vundle#end()

" File type detection
filetype plugin indent on
syntax on

" Partial fuzzy file search
set path+=**

" Command line and menu looks
set wildmenu
set wildmode=full
set laststatus=2
set incsearch
set history=1000

" Typing area looks
" set relativenumber
" set number
set backspace=indent,eol,start
set cursorline
set ruler
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set breakindent
set smartindent
set cindent
set ignorecase
set smartcase
set sidescrolloff=10
set scrolloff=10
set noerrorbells visualbell t_vb=
colorscheme badwolf
set t_Co=256
"
" " Highlighting the last column in red and cursor column
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%81v./

map hol :highlight OverLength ctermbg=darkred ctermfg=grey<CR>:match OverLength /\%81v./<CR>
map hnl :highlight clear OverLength<CR>


" Key remaps
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
map <C-J> gj
map <C-K> gk

" Customisations on netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Integrate vim with R via Tmux
map <C-L> "kyy:echo system("tmux send-keys -t $(tmux display-message -p '#S:#I.bottom-right') ".escape(shellescape(@k),"$"))<CR>j
vmap <C-L> "xy:echo system("tmux send-keys -t $(tmux display-message -p '#S:#I.bottom') ".escape(shellescape(@x."\n"),"$"))<CR>j
map <C-M><C-M> :echo system("tmux send-keys -t $(tmux display-message -p '#S:#I.bottom') ".shellescape("source('".expand('%:t')."')\n"))<CR><CR>

" Working with buffers
map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b

" Goyo writing mode settings
function! s:goyo_enter()
	map go :Goyo<CR>
	set nocindent
	set noautoindent
	set spell
	set textwidth=80
	GitGutterDisable
endfunction
function! s:goyo_leave()
	map go :Goyo 85<CR>
	set spell
	set cindent
	set autoindent
    set textwidth=0
	GitGutterEnable
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
map go :Goyo 85<CR>

" Git gutter settings
map gl :GitGutterToggle<CR>
