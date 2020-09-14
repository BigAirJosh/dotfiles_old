syntax on

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

set nocompatible

set path+=**

set wildmenu

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

set number

set mouse=a

filetype plugin indent on
set backspace=indent,eol,start

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
:nmap tt <Plug>MavenRunUnittest

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'itchyny/lightline.vim'

Plug 'arcticicestudio/nord-vim'

Plug 'aserebryakov/vim-todo-lists'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-dadbod'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sensible'

" Initialize plugin system
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

colorscheme nord


