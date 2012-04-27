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
  
"����˵�����  
  
source $VIMRUNTIME/delmenu.vim  
  
source $VIMRUNTIME/menu.vim  
  
"���consle�������  
  
language messages zh_CN.utf-8  

"���ñ���  
  set enc=utf-8  

"�����ļ�����  
  set fenc=utf-8  

"�����ļ����������ͼ�֧�ָ�ʽ  
  set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 

" ����vimʱ���ڵĴ�С
  set lines=45 columns=200  

" ������VI���̣�ʹ��vim����
  set nocompatible

 set autochdir  

 " �ļ�����ʶ��
  filetype on
  filetype plugin indent on

" ��ֹ������ʱ�ļ�
  set nobackup
  set noswapfile

" ��ʷ��¼��
  set history=50


" ���ÿ����﷨����  
  syntax on  

" ��ʾ�к�  
  set number  

" ������ʾƥ�������
  set showmatch

" �������Դ�Сд
  set ignorecase  

" ���ҽ����������ʾ  
  set hlsearch
  set incsearch

" tab���  
  set tabstop=4  
  set cindent shiftwidth=4  
  set autoindent shiftwidth=4  
  
" �������°�tab���Զ����
  set wildmode=list:full
  set wildmenu

" ����Ĭ�ϵ���ɫ
  colorscheme mustang 
  
if has("win32")
    set guifont=Courier_New:h11:cANSI
    set guifontwide=YaHei\ Consolas\ Hybrid:h10
endif

" Set Line space
set linespace=4

" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2

" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l

" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0

" �������·��ŵĵ��ʲ�Ҫ�����зָ�
  set iskeyword+=_,$,@,%,#,-
  
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
  set report=0
  
" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
  set mouse=a
  set selection=exclusive
  set selectmode=mouse,key

" �����Զ�����
  imap <F9> <Esc>:up<cr>  

" �� F8 ӳ�䵽 ����NERDTree���
  let NERDTreeShowBookmarks = 1
  let NERDChristmasTree = 1
  let NERDTreeWinPos = "left"
  map <F8> :NERDTree<CR>  

" �ڲ�ͬ�Ĵ����ƶ�
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

" ����FuzzyFinder
  let mapleader = "\\"
  map <leader>F :FufFile<CR>
  map <leader>f :FufTaggedFile<CR>
  map <leader>g :FufTag<CR>
  map <leader>b :FufBuffer<CR>

" ����Color-Sample
  map <silent><F3> :NEXTCOLOR<cr>
  map <silent><F2> :PREVCOLOR<cr>

" ����Rubytest
  let g:rubytest_cmd_spec = "rspec -fd %p"

" ����SuperTab
  let g:SuperTabRetainCompletionType="context"
