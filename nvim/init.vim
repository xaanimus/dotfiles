set runtimepath^=~/.soadot/nvim/ runtimepath+=~/.soadot/nvim/after runtimepath+=~/.soadot/nvim/site
let &packpath = &runtimepath

let s:script_path = expand('<sfile>:p:h')

"autoindenting/tab
filetype plugin indent on
set tabstop=2 "<TAB> when opening
set shiftwidth=2 "<TAB> when entered while editing
set expandtab

"python host
let g:python_host_prog='/usr/local/bin/python2'
let g:python3_host_prog='/usr/local/bin/python3'

let mapleader="\<Space>"

inoremap jk <ESC>
"clear search
nnoremap <leader><space> :nohlsearch<CR>

let g:clang_library_path='/usr/local/opt/llvm/lib'

set wildmenu
set incsearch "search as you enter chars

"backspace
set backspace=indent,eol,start

set smartcase

let &directory=s:script_path . '/__local__/swap_files//'

"automatically set current dir
set autochdir

let g:latex_to_unicode_tab = 0

inoremap <C-Space> <C-X><C-O>
inoremap <C-@> <C-X><C-O>

let g:netrw_home = '~/.my_files/vim/__local__/'

exec 'source ' . s:script_path . '/gui.vim'
exec 'source ' . s:script_path . '/plug_config.vim'
