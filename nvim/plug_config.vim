"configuration for vim-plug package manager

call plug#begin('~/.my_dotfiles/vim/__local__/plugged')

"cocoapods
Plug 'jvirtanen/vim-cocoapods'

"auto pairs
Plug 'jiangmiao/auto-pairs'

"Gui
Plug 'vim-airline/vim-airline'

"Golang
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"Python
Plug 'davidhalter/jedi-vim'

"ejs
Plug 'nikvdp/ejs-syntax'

"syntastic
Plug 'scrooloose/syntastic'

"Misc Autocomplete
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

"Julia
Plug 'JuliaEditorSupport/julia-vim'

"css
Plug 'othree/csscomplete.vim'

"Rust
Plug 'rust-lang/rust.vim'

"Toml
Plug 'cespare/vim-toml'

"search and replace
Plug 'brooth/far.vim'

"glsl
Plug 'tikhomirov/vim-glsl'

"ccls (c++)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"Python 3
let g:jedi#force_py_version=3

"Syntastic settings
let g:syntastic_mode_map = {'mode': 'passive',
            \ 'active_filetypes': ['rs'],
            \ 'passive_filetypes': []}

"Julia settings ===============
let g:default_julia_version = '0.6'

"language Client
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
\       using LanguageServer;
\       server = LanguageServer.LanguageServerInstance(STDIN, STDOUT, false);
\       server.runlinter = true;
\       run(server);
\   '],
\   'rust': ['rustup', 'run', 'nightly', 'rls']
\ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

au FileType julia nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
au FileType julia nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
au FileType julia nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

autocmd FileType jl LanguageClientStart

"init css
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
