source ~/.vimrc

"map <C-i> :RopeCodeAssist
let g:pymode_run_key='<C-,>'

nnoremap <silent> <D-Down> :bn<CR>
nnoremap <silent> <D-Up> :bp<CR>

" Pathogen load
filetype off

filetype plugin indent on
syntax on
set paste
set columns=106
set lines=40
vmap <C-c> "+y
nmap <C-v> "+gP

"set guifont=Bitstream\ Vera\ Sans\ Mono:h15
set guifont=Menlo\ Regular:h17
colorschem desertEx
