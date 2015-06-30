set tabstop=1
set softtabstop=4
set shiftwidth=4
set expandtab
set lines=50 columns=130
set hidden
set encoding=utf-8
set t_Co=256
set showcmd

execute pathogen#infect()

" open file type detection
filetype on
filetype plugin on
filetype indent on

let mapleader=","
nmap <Leader>lb 0
nmap <Leader>le $
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>q :q<CR>

nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nnoremap <Leader>nw <C-W><C-W>

nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nnoremap <leader>hn :nohlsearch<CR>

set incsearch
set ignorecase
set nocompatible
set wildmenu

set ruler
set number
set cursorline
set cursorcolumn
set hlsearch

"set guifont=WenQuanYi\ Micro\ Hei\ Mono\ Regular\ 12
set nowrap
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Regular\ 12

syntax enable
syntax on

set background=dark
colorscheme molokai
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=T
set guioptions-=m

set laststatus=2
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 只检查indent
let g:airline#extensions#whitespace#checks = [ 'indent' ]

set foldmethod=syntax
set nofoldenable
set scrolloff=3

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q+f"
" YCM 补全菜单配色
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
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
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>je :YcmCompleter GoToDefinition<CR>


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

nnoremap <c-x>b :CtrlPBuffer<cr>
" buffer 切换快捷键
nnoremap <C-Tab> :bp<cr>
nnoremap <C-S-Tab> :bn<cr>
" my shortcuts
nnoremap <C-x><C-f> :e
nmap <F5> :!bash ./makerun.sh<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <leader>hf :CtrlSF<CR>

nmap <F8> :TagbarToggle<CR>
let tagbar_right=1
let tagbar_width=32
"
" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
