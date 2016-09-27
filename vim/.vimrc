" no vi-compatible
set nocompatible

" highlight syntax
syntax on

" realtime matchs
set incsearch

" highlight search
set hlsearch 

" encodings
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" command-line completion
set wildmenu

" makes vimrc effective immediately after saving
autocmd BufWritePost $MYVIMRC source $MYVIMRC


" make command line two lines high
"set ch=2

""" Settings Go After use_vim_as_ide
" mapleader
let mapleader=";"

" enable file type detection
filetype on

" enable loading plugin and indent files for specific file
filetype plugin indent on

" ignore case in a pattern
set ignorecase

" use vundle to manage plugins
" vundle environment setting 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
call vundle#end()
filetype plugin indent on

"" GUI Settings
" color setting
set background=dark
colorscheme solarized
"colorscheme molokai 
"colorscheme phd 

" makes cursor not blink
set gcr=a:block-blinkon0

" no scroll bar, NOTE: no space near =
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" no menu or toolbar
set guioptions-=m
set guioptions-=T

"" other settings
set laststatus=2

" show cursor position
set ruler

" show line number
set number

" highlight cursor line and column 
set cursorline
set cursorcolumn

" no wrap
set nowrap

" expand tab to spaces
set expandtab

" tabstop
set tabstop=4

" shiftwidth
set shiftwidth=4

" make 4 spaces as a tab
set softtabstop=4

" indent guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" fold
"set foldmethod=indent
set foldmethod=syntax
set nofoldenable

" switch between *.cpp and *.h
nmap <silent><Leader>sw :FSHere<cr>
