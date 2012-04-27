 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
Bundle 'Mark'
Bundle 'The-NERD-tree'
Bundle 'closetag.vim'
Bundle 'The-NERD-Commenter'
Bundle 'AutoComplPop'
Bundle 'jsbeautify'
Bundle 'YankRing.vim'
 Bundle 'https://github.com/msanders/snipmate.vim.git'
 Bundle 'https://github.com/ervandew/supertab.git'
 Bundle 'https://github.com/fholgado/minibufexpl.vim.git'

 " non github repos


 filetype plugin indent on     " required!



"================
set encoding=utf-8  
  
set fileencodings=utf-8,chinese,latin-1 
  
if has("win32")  
  
 set fileencoding=chinese  
  
else  
  
 set fileencoding=utf-8  
  
endif  
  
"解决菜单乱码  
  
source $VIMRUNTIME/delmenu.vim  
  
source $VIMRUNTIME/menu.vim  
  
"解决consle输出乱码  
  
language messages zh_CN.utf-8  

"设置编码  
  set enc=utf-8  

"设置文件编码  
  set fenc=utf-8  

"设置文件编码检测类型及支持格式  
  set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 

" 启动vim时窗口的大小
  set lines=45 columns=200  

" 不兼容VI键盘，使用vim键盘
  set nocompatible

 set autochdir  

 " 文件类型识别
  filetype on
  filetype plugin indent on

" 禁止生成临时文件
  set nobackup
  set noswapfile

" 历史记录数
  set history=50


" 设置开启语法高亮  
  syntax on  

" 显示行号  
  set number  

" 高亮显示匹配的括号
  set showmatch

" 搜索忽略大小写
  set ignorecase  

" 查找结果高亮度显示  
  set hlsearch
  set incsearch

" tab宽度  
  set tabstop=4  
  set cindent shiftwidth=4  
  set autoindent shiftwidth=4  
  
" 命令行下按tab键自动完成
  set wildmode=list:full
  set wildmenu

" 设置默认的颜色
  colorscheme mustang 
  
if has("win32")
    set guifont=Courier_New:h11:cANSI
    set guifontwide=YaHei\ Consolas\ Hybrid:h10
endif

" Set Line space
set linespace=4

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 带有如下符号的单词不要被换行分割
  set iskeyword+=_,$,@,%,#,-
  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
  set report=0
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
  set mouse=a
  set selection=exclusive
  set selectmode=mouse,key

" 设置自动保存
  imap <F9> <Esc>:up<cr>  

" 把 F8 映射到 启动NERDTree插件
  let NERDTreeShowBookmarks = 1
  let NERDChristmasTree = 1
  let NERDTreeWinPos = "left"
  map <F8> :NERDTree<CR>  

" 在不同的窗口移动
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

" 设置FuzzyFinder
  let mapleader = "\\"
  map <leader>F :FufFile<CR>
  map <leader>f :FufTaggedFile<CR>
  map <leader>g :FufTag<CR>
  map <leader>b :FufBuffer<CR>

" 设置Color-Sample
  map <silent><F3> :NEXTCOLOR<cr>
  map <silent><F2> :PREVCOLOR<cr>

" 设置Rubytest
  let g:rubytest_cmd_spec = "rspec -fd %p"

" 设置SuperTab
  let g:SuperTabRetainCompletionType="context"
