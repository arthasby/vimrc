" => General Settings
let mapleader=' '
set scrolloff=7
set hlsearch
set cursorline
set number
set fileencodings=ucs-bom,utf-8,cp936,default,latin1
set ruler
set showcmd
set showmode
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=2
set showtabline=2

if has("gui_running")
    set guifont=Yahei\ Consolas\ Hybrid
    set guioptions-=e
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=B
    set guioptions-=0
    set guioptions=
    set guitablabel=
    "set paste
    set mousemodel=popup_setpos
    set mouse-=a
endif

" => junegunn/vim-plug
call plug#begin('$HOME/.vim/plugged')

Plug 'simplyzhao/cscope_maps.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'google/vim-colorscheme-primary'
Plug 'vim-scripts/bufexplorer.zip'
"Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'vim-airline/vim-airline'

call plug#end()

" => majutsushi/tagbar -------------------------
if !empty("$HOME/.vim/plugged/tagbar")
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_zoomwidth=1
endif

" => google/vim-colorscheme-primary ------------
if !empty("$HOME/.vim/plugged/vim-colorscheme-primary")
syntax enable
set t_Co=256
set background=dark " options:light/dark
colorscheme primary
endif

" => scrooloose/nerdtree -----------------------
if !empty("$HOME/.vim/plugged/nerdtree")
nnoremap <F10> :NERDTreeToggle<CR>
let NERDTreeWinPos='right' " value: 'left', 'right'
endif

" => Valloric/YouComplete ----------------------
if !empty("$HOME/.vim/plugged/youcompleteme")
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf = 0
endif

" => rking/ag.vim ------------------------------
if !empty("$HOME/.vim/plugged/ag.vim")
let g:ag_working_path_mode="r"
endif

" => Chun-Yang/vim-action-ag -------------------
if !empty("$HOME/.vim/plugged/vim-action-ag")
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" " use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
endif

" => vim-airline/vim-airline -------------------
if !empty("$HOME/.vim/plugged/vim-airline")
let g:airline#extensions#tabline#enabled = 1
endif
