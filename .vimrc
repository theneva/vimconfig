set nocompatible " iMproved
filetype off

" Include Vundle in runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-surround'
" Plugin 'easymotion/vim-easymotion'

Plugin 'mattn/emmet-vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'mxw/vim-jsx'


call vundle#end()

filetype plugin on

filetype plugin indent on

" User config
syntax on
set relativenumber

" Disable annoying markdown folding
set nofoldenable

" Use 2 spaces instead of tabs when <Tab> is pressed
set expandtab
set shiftwidth=2
set softtabstop=2

" Wrap whole words
set wrap
set linebreak

" Search highlighting
set hlsearch

" Save with ctrl + s
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a

" Disable arrow keys in all modes
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Remove need to move back and forth to find the cursor after searching
set cursorline

" Show three lines above and below the current window
set scrolloff=3

" Automatically load .vimrc config when changes are saved
autocmd! bufwritepost .vimrc source %

" Easymotion config
" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

" backspace over everything in insert mode
set backspace=indent,eol,start 

" Let the syntax highlighting know that the terminal is black
set background=dark

set tabpagemax=100

" LaTeX stuff
" Always discover .tex files as LaTeX files
let g:tex_flavor="latex"

" Generate LaTeX itemize block with C-i
inoremap <c-l><c-z> <esc>I\begin{itemize}<cr>\item<space><cr>\end{itemize}<esc>kA
nnoremap <c-l><c-z> I\begin{itemize}<cr>\item<space><cr>\end{itemize}<esc>kA

inoremap <c-l><c-i> \textit{}<esc>i
noremap i<c-l><c-i> \textit{}<esc>i

" indenting with 2 spaces
set softtabstop=2
set shiftwidth=2

" Spell-check!
setlocal spell
setlocal spelllang=en_gb
set spellfile=~/.vim-spell-en.utf-8.add
set complete+=kspell
