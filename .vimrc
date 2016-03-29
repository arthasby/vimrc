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

" => junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/taglist.vim'
Plug 'simplyzhao/cscope_maps.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'google/vim-colorscheme-primary'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'tpope/vim-fugitive'

call plug#end()

" => vim-scripts/taglist.vim -------------------
nmap <F3> :Tlist<CR>

" => google/vim-colorscheme-primary ------------
"
syntax enable
set t_Co=256
set background=dark " light/dark
colorscheme primary

" => scrooloose/nerdtree -----------------------
"
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeWinPos='right' " value: 'left', 'right'

" => vim-scripts/taglist.vim -------------------
"
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1

" => Valloric/YouComplete ----------------------
"
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf = 0
