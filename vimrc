set paste
filetype off
set nocompatible               " be iMproved
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
nmap c ^i#<Esc>j


" 256 colors
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

"set foldmethod=indent
"set foldlevel=99
nnoremap <C-l> :vertical resize +4<cr>
nnoremap <C-h> :vertical resize -4<cr>
nmap <silent> <F4> <C-w><C-w>

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set ruler                   " show the cursor position all the time
set autoread                " auto read when file is changed from outside
set hlsearch                " search highlighting
"set clipboard=unnamed       " yank to the system register (*) by default
set showmatch               " Cursor shows matching ) and }
set showmode                " Show current mode
set wildchar=<TAB>          " start wild expansion in the command line using <TAB>
set wildmenu                " wild char completion menu
set autoindent      " auto indentation
set incsearch       " incremental search
set nobackup        " no *~ backup files
set copyindent      " copy the previous indentation on autoindenting
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to context
" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" 256 colors
"set t_Co=256
"set t_AB=%dm
"set t_AF=%dm

syntax on                    " syntax highlighing
filetype on                  " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

vnoremap < <gv
vnoremap > >gv
set laststatus=2


"let g:pep8_map='<F8>'

"autocmd BufWritePost *.py call Flake8()
map <F2> :vsplit<CR>
map <silent> <F3> :Gstatus<CR>

nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

let g:SuperTabDefaultCompletionType = "context"

nnoremap <buffer> <C-F> :exec '!autopep8  --in-place --aggressive --aggressive ' shellescape(@%, 1)<cr>

"---------------------------------------------------------------------------
" ENCODING SETTINGS
"---------------------------------------------------------------------------
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformat=unix


fun! ViewUTF8()
    set encoding=utf-8
    set termencoding=big5
endfun

fun! UTF8()
    set encoding=utf-8
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
    set encoding=big5
    set fileencoding=big5
endfun

"" Python Code
""

""""""""""""""""""""""""""""""""""""
" Bundle Section
""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'

" Colorscheme management
Bundle 'desertEx'
Bundle 'Solarized'
Bundle 'davidhalter/jedi-vim'
Bundle 'nvie/vim-flake8'

""""""""""""""""""""""""""""""""""""
colorscheme desertEx
