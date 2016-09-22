colorscheme wombat256mod

call plug#begin('~/.config/nvim/plugged')

Plug 'LaTeX-Box-Team/LaTeX-Box'
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
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'tpope/vim-unimpaired'
Plug 'majutsushi/tagbar'

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
let g:LatexBox_viewer = 'zathura'
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
autocmd BufWritePost *.tex call SaveAndGoHighlightCurrentPosition()

map <F11> :call SaveAndGoHighlightCurrentPosition()

function! SaveAndGoHighlightCurrentPosition()
        let filename = expand('%:r')
        :Latexmk
        :execute 'silent !zathura --synctex-forward ' . line('.') . ':' . col('.') . ':' . filename . '.tex ' . filename . '.pdf'
endfunction
:set tags^=/home/joel/code/erlang/ex1/tags
