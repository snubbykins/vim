call pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
:set softtabstop=4
:set shiftwidth=4

:setlocal ff=unix

set clipboard=unnamed

:set number
:set backspace=indent,eol,start

set errorformat+=%f:%l:\ %m

au GUIEnter * simalt ~x
:set enc=utf8
:set fileformats=dos
:set guifont=Consolas:h18

colorscheme wombat

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=r

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

