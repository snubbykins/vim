call pathogen#infect()
syntax on
filetype plugin indent on

:set makeprg=mingw32-make
nnoremap <silent> <F8> :!start bin/output.exe<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
:set softtabstop=4
:set shiftwidth=4

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

cd $HOME\Desktop\Projects

let g:ycm_confirm_extra_conf=0
let g:ycm_filepath_completion_use_working_dir=1
"let g:ycm_global_ycm_extra_conf = 'C:\_ycm_extra_conf.py'

