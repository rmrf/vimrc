set nocompatible               " be iMproved
filetype off                   " required!
nmap c ^i#<Esc>j

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Basic configuration
syntax on

set number
set ruler                   " show the cursor position all the time
set autoread                " auto read when file is changed from outside
set hlsearch                " search highlighting
"set clipboard=unnamed       " yank to the system register (*) by default
set showmatch               " Cursor shows matching ) and }
set showmode                " Show current mode
set wildchar=<TAB>          " start wild expansion in the command line using <TAB>
set wildmenu                " wild char completion menu

" put all backup files/swap files together
" swap files
set directory=~/.vim_backup,.,~/tmp,/tmp
" backcup files
set backupdir=~/.vim_backup,.,~/tmp,/tmp

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

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

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" 256 colors
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

" Limit max line number
if exists('+colorcolumn')
  set colorcolumn=79
else
  au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
"}

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

""" Indent
""  Default
set tabstop=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=80
set smarttab
set expandtab

""" Remove trailling whitespace while save
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.sh :%s/\s\+$//e


map yab :'a,'by<cr>

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

" Colorscheme management
Bundle 'desertEx'
Bundle 'Solarized'

" Python code pep8 checker
Bundle 'pep8'
" pep8 configuration
" Change the mapping to run pep8
let g:pep8_map='<F4>'

" python code indent helper, match pep8
" Bundle 'indentpython.vim'

" python syntax
Bundle 'python.vim--Vasiliev'

" project navigation
Bundle 'https://github.com/scrooloose/nerdtree.git'
" How can I open a NERDTree automatically when vim starts up if no files were
" specified?
autocmd vimenter * if !argc() | NERDTree | endif
" How can I close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows=0
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>

" mini buffer
Bundle 'minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" ctags
Bundle 'vim-scripts/taglist.vim'

" Python code completion
"Bundle 'vim-scripts/Pydiction'
" Note: Renamed plugin dir to ftplugin
"let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

" super tab
" Bundle 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" code snip
Bundle 'msanders/snipmate.vim'
"let g:snipMateAllowMatchingDot = 0

" Funny tools
Bundle 'vim-scripts/matrix.vim--Yang'

" Python mode
Bundle 'klen/python-mode'

map <F3> :PyLintAuto<CR>
"
" Disable pylint checking every save
let g:pymode_lint_write = 0
" Set key 'R' for run python code
let g:pymode_run_key = '<F5>'
" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8,pyflakes,mcccabe"
let g:pymode_lint_checker = "pep8,pyflakes,mccabe"
" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1
" Enable python folding
let g:pymode_folding = 0
" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Load colorscheme at the bottom
colorscheme desertEx
