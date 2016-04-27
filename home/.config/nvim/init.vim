colorscheme wombat256mod

call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Blackrush/vim-gocode'
Plug 'Lokaltog/vim-easymotion'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'dart-lang/dart-vim-plugin'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'OrangeT/vim-csharp'
Plug 'mattn/emmet-vim'
Plug 'tmhedberg/matchit'
Plug 'shime/vim-livedown'
Plug 'ingydotnet/yaml-vim'
Plug 'ap/vim-css-color'
Plug 'jceb/vim-hier'
Plug 'dannyob/quickfixstatus'
Plug 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-gradle'

" Add plugins to &runtimepath
call plug#end()

set expandtab
set smarttab
set number
set relativenumber
set cursorline
"""""""""""""""""""
""" EASY MOTION """
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Bi-directional find motion binding
nmap s <Plug>(easymotion-s2)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
"""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme = "wombat"
