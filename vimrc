set paste
set nocompatible               " be iMproved

" press c to comment current line 
nmap c ^i#<Esc>j


set foldmethod=indent
set foldlevel=99

" ### NOTE, this conflict with minibufexpl's navigation
" ### so I disabled it here 
" enlarge or shrink current vplit/horizonal window
"nnoremap <C-l> :vertical resize +4<cr>
"nnoremap <C-h> :vertical resize -4<cr>
"nnoremap <C-j> :resize +4<cr>
"nnoremap <C-k> :resize -4<cr>
"
" for 256 color
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

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


syntax on                    " syntax highlighing
filetype on                  " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

vnoremap < <gv
vnoremap > >gv
set laststatus=2


"autocmd BufWritePost *.py call Flake8()
map <F2> :vsplit<CR>
map <F5> :PymodeLintAuto<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Github
"map <silent> <F3> :Gstatus<CR>

let g:SuperTabDefaultCompletionType = "context"

"set textwidth=80
"set colorcolumn=+1
"hi ColorColumn guibg=#2d2d2d ctermbg=246

"autocmd BufWritePost *.py call Flake8()
map <F2> :vsplit<CR>
map <silent> <F3> :Gstatus<CR>

"---------------------------------------------
" ENCODING SETTINGS
"---------------------------------------------
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


" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" Disable pylint checking every save
let g:pymode_lint_write = 0

" Enable python folding
let g:pymode_folding = 1

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Load show documentation plugin
let g:pymode_doc = 1

" Key for show python documentation
let g:pymode_doc_key = 'K'

" Load run code plugin
let g:pymode_run = 0

let g:pymode_rope_completion_bind = '<C-,>'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_guess_project = 0
let g:pymode_rope_lookup_project = 0

""""""""""""""""""""""""""""""""""""
" Bundle Section
""""""""""""""""""""""""""""""""""""

" let Vundle manage Vundle required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'klen/python-mode'
Bundle 'tpope/vim-fugitive'

"Bundle 'davidhalter/jedi-vim'
"Bundle 'nvie/vim-flake8'

""""""""""""""""""""""""""""""""""""
Bundle 'minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

""""""""""""""""""""""""""""""""""""
" Colorscheme management
Bundle 'desertEx'
colorscheme desertEx
Bundle 'Solarized'
