scriptencoding utf-8
set encoding=utf-8
set t_Co=256
set term=screen-256color
syntax on

colorscheme wombat256mod
"colorscheme darcula

if has('gui_running')
    set guifont=Hack
endif

if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'xuhdev/vim-latex-live-preview'
NeoBundle 'dart-lang/dart-vim-plugin'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'OrangeT/vim-csharp'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'shime/vim-livedown'
NeoBundle 'ingydotnet/yaml-vim'
NeoBundle 'ap/vim-css-color'
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

let g:neocomplete#enable_at_startup = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

set expandtab
set smarttab
set number
"""""""""""""""""""
""" EASY MOTION """
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Bi-directional find motion binding
nmap s <Plug>(easymotion-s2)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
"""""""""""""""""""
set noshowmode
let g:livepreview_previewer = 'evince'

set tabstop=4
set shiftwidth=4

map ^[OA <up>
map ^[OB <down>
map ^[OC <right>
map ^[OD <left>
if $TERM =~ '^screen-256color'
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif

set omnifunc=syntaxcomplete#Complete

set laststatus=2
set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
