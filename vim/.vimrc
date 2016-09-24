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

" makes cursor not blink
set gcr=a:block-blinkon0

" tabstop
set tabstop=4
