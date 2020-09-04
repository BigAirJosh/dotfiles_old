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

filetype plugin indent on
set backspace=indent,eol,start

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
:nmap tt <Plug>MavenRunUnittest

let g:maven_keymaps=1

autocmd FileType java setlocal omnifunc=javacomplete#Complete

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'itchyny/lightline.vim'

Plug 'arcticicestudio/nord-vim'

Plug 'aserebryakov/vim-todo-lists'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-dadbod'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-sensible'

Plug 'mikelue/vim-maven-plugin'

Plug 'artur-shaik/vim-javacomplete2'

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


nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)

imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


