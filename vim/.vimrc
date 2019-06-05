""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" no vi-compatible
set nocompatible

" highlight syntax
syntax on

" realtime matchs
set incsearch
" highlight search
set hlsearch
" ignore case in a pattern
set ignorecase

" file encodings
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" enable file type detection
filetype on
" enable loading plugin and indent files for specific file
filetype plugin indent on

" command-line completion
set wildmenu

" mapleader
let mapleader=";"

" no wrap
set nowrap

" makes vimrc effective immediately after saving
autocmd BufWritePost $MYVIMRC source $MYVIMRC


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin (Plugin first as other settings like colorscheme depends on it.)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use vundle to manage plugins
" vundle environment setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Mizuchi/STL-Syntax'
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
" Plugin 'derekwyatt/vim-protodef'  "unusable
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown' "need ruby which is unsupported
" Plugin 'lilydjwg/fcitx.vim' "linux only
Plugin 'fatih/vim-go'
Plugin 'parkr/vim-jekyll'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'sheerun/vim-polyglot'
call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color setting
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" makes cursor not blink
set gcr=a:block-blinkon0

" show cursor position
set ruler

" show line number
set number

" highlight cursor line and column
set cursorline
set cursorcolumn

" make command line two lines high
"set ch=2

set laststatus=2

" statusline color scheme
"let g:Powerline_colorscheme='solarized256'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" guifont
if has('gui_running')
    if has("gui_gtk2")
        "set guifont=Consolas\ 14
        "set guifont=Bitstream\ Vera\ Sans\ Mono\ 12,Fixed\ 12
        set guifont=Yahei\ Consolas\ Hybrid\ 14
        set guifontwide=Microsoft\ Yahei\ 14,WenQuanYi\ Zen\ Hei\ 14
        set linespace=2
    elseif has('gui_win32')
        set guifont=Yahei\ Consolas\ Hybrid:h12
    endif
endif

" no scroll bar, NOTE: no space near =
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" no menu or toolbar
set guioptions-=m
set guioptions-=T


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"shortcut for indent guide
:nmap <silent><Leader>i <Plug>IndentGuidesToggle


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold
"set foldmethod=indent
set foldmethod=syntax
"turn off fold on vim startup
set nofoldenable


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM setting
nnoremap <Leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>jd :YcmCompleter GoToDefinition<CR>

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
" set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_openframeworks.py"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar window
"set tagbar on the left
let tagbar_left=0
"set shortcut for tagbar
nnoremap <Leader>ilt :TagbarToggle<CR>
"set tagbar window width
let tagbar_width=32
"do not display help infomation
let g:tagbar_compact=1
"set tag type
let g:tagbar_type_cpp = {
            \ 'kinds' : [
            \ 'c:classes:0:1',
            \ 'd:macros:0:1',
            \ 'e:enumerators:0:0',
            \ 'f:functions:0:1',
            \ 'g:enumeration:0:1',
            \ 'l:local:0:1',
            \ 'm:members:0:1',
            \ 'n:namespaces:0:1',
            \ 'p:functions_prototypes:0:1',
            \ 's:structs:0:1',
            \ 't:typedefs:0:1',
            \ 'u:unions:0:1',
            \ 'v:global:0:1',
            \ 'x:external:0:1'
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
            \ },
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
            \ }
            \ }



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Build
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make
nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets
let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips settings
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MiniBuffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" environment saving and restoring
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

" undo tree
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>
" 开启保存 undo 历史功能
set undofile
" undo 历史保存路径
set undodir=~/.undo_history/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C++
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" switch between *.cpp and *.h
nmap <silent><Leader>sw :FSHere<cr>

" Auto detect STL header as cpp file
autocmd BufRead * if search('\M-*- C++ -*-', 'n', 1) | setlocal ft=cpp | endif

" set path for pullproto script
" let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
" 成员函数的实现顺序与声明顺序一致
" let g:disable_protodef_sorting=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Golang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Golang
autocmd BufWritePre *.go GoImports
nnoremap <leader>gb :GoBuild<CR>
nnoremap <leader>gr :GoRun<CR>
nnoremap <leader>gt :GoTest<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let vim-table-mode use Markdown-compatible table
let g:table_mode_cornner='|'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlfs search
nnoremap <Leader>sp :CtrlSF<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Others
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" brackets snippets
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Project specified
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format "AI:An Modern Approach" exercises
nnoremap <leader>faie :%s/^[0-9]*\.[0-9]* /### Exercise &/g<Return>:%s/^[a-z]\. /AZLabelMark&/g<Return>gg500J:%s/### Exercise [0-9]*\.[0-9]*/\r\r&\r\r>/g<Return>:%s/AZLabelMark\([a-z]\)/  \r> **\1**/g<Return>

