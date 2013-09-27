if(has("win32") || has("win95") || has("win64") || has("win16")) "判定当前操作系统类型
    let g:iswindows=1
else
    let g:iswindows=0
endif
"====================

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


"---------编辑vim配置文件-定义变量----
if has("unix")
    set fileformats=unix,dos,mac
    nmap <leader>e :tabnew $HOME/.vimrc<cr>
	let $VIMFILES = $HOME."/.vim"
else
    set fileformats=dos,unix,mac
    nmap <leader>e :tabnew $HOME/_vimrc<cr>
    let $VIMFILES = $HOME."/vimfiles"
endif

let $VIMDATA = $VIMFILES."/vimdata"
set backupdir=$VIMDATA/backup
set directory=$VIMDATA/temp


"------------vundle 插件''''"
set nocompatible               " be iMproved 关闭兼容模式
 filetype off                   " required!

 "set rtp+=~/.vim/bundle/vundle/
 set rtp+=$VIMFILES/bundle/vundle/
 call vundle#rc('$VIMFILES/bundle/')
 "call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

"repo
 Bundle 'https://github.com/tpope/vim-fugitive.git'
 Bundle 'https://github.com/tpope/vim-rails.git'
 Bundle 'jsbeautify'
 Bundle 'https://github.com/scrooloose/nerdtree.git'
 Bundle 'https://github.com/scrooloose/nerdcommenter.git'
 Bundle 'https://github.com/fholgado/minibufexpl.vim.git'
 "Bundle 'Mark'
 " Bundle 'L9'
 " Bundle 'FuzzyFinder'
 "Bundle 'hexHighlight.vim'
 Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
 Bundle 'https://github.com/godlygeek/tabular.git'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'Align'
 " Bundle 'TxtBrowser'
 "Bundle 'UltiSnips' 
 Bundle 'ctrlp.vim'    
 "查找文件插件无依赖库 
 Bundle 'AutoClose'   
 "自动闭合标签等等
 Bundle 'EasyMotion'
 "高效的移动光标方式
 Bundle 'FencView.vim'
 "自动识别文件编码
 "Bundle 'AuthorInfoDetect'
 Bundle 'AuthorInfo'
 "Bundle 'https://github.com/Valloric/YouCompleteMe.git'
 Bundle 'https://github.com/mattn/zencoding-vim.git'
 " Bundle 'TabBar'
 Bundle 'neocomplcache'
 filetype plugin indent on     " required!

"---------------vundle end-------"

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

"set ai!                      " 设置自动缩进
set autoindent               " 自动缩进
set smartindent              " 智能自动缩进
"set backspace=2              " 设置退格键可用
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set whichwrap+=<,>,h,l       " 允许backspace和光标键跨越行边界

set number                   " 显示行号
set cursorline               " 突出显示当前行
set list                     " 显示Tab符，
set listchars=tab:\|\ ,      " 使用一高亮竖线代替
set scrolloff=8              " 上下可视行数
set smarttab
set tabstop=4                " 设置tab键的宽度
set softtabstop=4            " 设置按BackSpace的时候可以一次删除掉4个空格
set shiftwidth=4             " 换行时行间交错使用2个空格, 设定 << 和 >> 命令移动时的宽度为 2
set cindent shiftwidth=4     " 自动缩进2空格
set expandtab                " tab转为空格 
set showmatch                " 显示括号配对情况
set matchtime=3              " 括号配对显示时间
set iskeyword+=_,$,@,%,#,-   " 带有如下符号的单词不要被换行分割
set history=100              " history文件中需要记录的行数
"set mouse=a                  " 启用鼠标
set clipboard+=unnamed       " 与windows共享剪贴板
"set selection=exclusive      " 选中即复制
"set selectmode=mouse,key     " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）

set ignorecase               " 搜索时忽略大小写，
set smartcase                " 但在有一个或以上大写字母时仍大小写敏感
set incsearch                " 开启实时搜索功能,查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
map <C-n> :nohl<cr>关闭错误声音

" 关闭错误声音
set noerrorbells
set novisualbell
set t_vb=
set vb t_vb=                 " 关闭提示音

"========显示设置==========
colorscheme Lucius           " 着色模式
set guifont=Envy\ Code\ R:h10       " 字体 && 字号
""set guifont="微软雅黑Monaco":h10
set gfw=Microsoft\ YaHei\ Mono:h9:cGB2312
""set gfw=幼圆:h10:cGB2312
set linespace=2              " 字符间插入的像素行数目

if has("gui_running")
    "set transparency=5
    set showtabline=2        " 开启自带的tab栏
    "au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    "winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=35 columns=160 " 指定窗口大小，lines为高度，columns为宽度
    "set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    "set guioptions-=L       " 隐藏左侧滚动条
    "set guioptions-=r       " 隐藏右侧滚动条
    "set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif
"========="

set hidden                   " 允许在有未保存的修改时切换缓冲区
"set writebackup              
set nobackup                 " 设置无备份文件
set autowrite                " 设置自动保存
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

set ruler                    " 右下角显示光标位置的状态行
set laststatus=2             " 开启状态栏信息
" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set showcmd
set showmode
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
set wildmenu                 " 增强模式中的命令行自动完成操作
" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题
set display=lastline
" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim 2match Underlined /.\%81v/


" 设置编码
"set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk,gb2312
"set encoding=utf-8
"set termencoding=cp936
"language messages zh_CN.UTF-8

"添加帮助文档所在目录
"helptags ~/.vim/doc
"set helplang=cn
" 解决菜单乱码
"set langmenu=zh_CN.UTF-8
"language messages zh_CN.utf-8
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
" 解决consle输出乱码

if has("multi_byte") 
    " UTF-8 编码 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk 
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif 
    if has("win32") 
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
        helptags $VIMFILES/doc
        set helplang=cn
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" ========插件和自定义键位=========="

if has("win32")
  autocmd! bufwritepost _vimrc source %
else
  autocmd! bufwritepost ~/.vimrc source ~/.vimrc
endif

"-----------
"========vim-powerline{ 
""set guifont=PowerlineSymbols\ for\ Powerline 
"set guifont=Monaco
set nocompatible 
set t_Co=256
set encoding=utf8 
let g:Powerline_symbols = 'unicode' "fancy
"=======} 

"=======indent_guides  默认映射  <mapleader>ig=========
let g:indent_guides_guide_size=2

"let Grep_Xargs_Path='gxargs'

"====TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

"======:FencView           查看文件编码和更改文件编码
let g:fencview_autodetect=1

"======:AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='Voodeng'
let g:vimrc_email='Voodeng@gmail.com'
let g:vimrc_homepage='http://voodeng.com'
nmap <F4> :AuthorInfoDetect<cr>

" Ctrl + E            一步加载语法模板和作者、时间信息 [非插入模式]
"map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
"vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi

" Ctrl + E            在当前行添加C/C++/Java语言的多行注释 [插入模式]
"imap <c-e> /*  */<ESC>

" =========NERDTree========="
" 把 F8 映射到 启动NERDTree插件 
 "nnoremap <F8> :NERDTreeToggle<CR>
  map <F8> :NERDTreeToggle<CR>
 let NERDTreeChDirMode=1 " 2选中root即设置为当前目录, 确定是否改变Vim的CWD
 let NERDTreeQuitOnOpen=1 "打开文件时关闭树
 "let NERDTreeShowBookmarks=1 "显示书签
 let NERDTreeMinimalUI=1 "不显示帮助面板
 let NERDTreeDirArrows=1 "目录箭头 1 显示箭头 0传统+-|号 
 let NERDTreeMouseMode=2           "指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
 let NERDTreeHighlightCursorline=1 "是否高亮显示光标所在行

"=========miniBufExpl============"
  let g:miniBufExplorerMoreThanOne=0
  let g:miniBufExplMapWindowNavVim=1 
  let g:miniBufExplMapWindowNavArrows=1 
  let g:miniBufExplMapCTabSwitchBufs=1 
  let g:miniBufExplModSelTarget=1  

   " MiniBufExpl Colors

"====plugin - NERD_commenter.vim 注释代码用的======"
 " [count],cc 光标以下count行逐行添加注释(7,cc)
 " [count],cu 光标以下count行逐行取消注释(7,cu)     
 " [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释
" 注：count参数可选，无则默认为选中行或当前行
"-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看


set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

