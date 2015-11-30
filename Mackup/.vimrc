set nocompatible " be iMproved
filetype off " required!
 set rtp+=~/.vim/bundle/vundle 
 call vundle#rc()  " let Vundle manage Vundle 
" required! 
Bundle 'gmarik/vundle' 
Bundle 'altercation/vim-colors-solarized' 
"Bundle 'jlanzarotta/bufexplorer' 
Bundle 'scrooloose/nerdtree' 
Bundle 'godlygeek/tabular' 
Bundle 'mileszs/ack.vim' 
Bundle 'easymotion/vim-easymotion'  
filetype plugin indent on " required!  
set bs=2 
set ts=4 
set sw=4 
set number " shows row and column number at bottom right corner 
set ruler  " For solarized plugin (color scheme) 
" https://github.com/altercation/vim-colors-solarized syntax enable set background=dark colorscheme solarized  
" NERDTree config map <C-n> :NERDTreeToggle<CR>
