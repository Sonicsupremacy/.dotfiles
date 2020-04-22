set nocompatible
filetype off

"====================
" PLUGINS
"====================
call plug#begin('~/.vim/plugged')

" Common plugins
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'fholgado/minibufexpl.vim'
Plug 'itchyny/lightline.vim'
Plug 'jeaye/color_coded'
Plug 'Raimondi/delimitMate'
"Plug 'scrooloose/syntastic'
"Plug 'jaxbot/semantic-highlight.vim'

" C/C++ plugins
Plug 'Rip-Rip/clang_complete', { 'for': ['cpp', 'c'] }
Plug 'vim-jp/vim-cpp', { 'for': ['cpp', 'c'] }
Plug 'vim-scripts/a.vim', { 'for': ['cpp', 'c'] }
Plug 'LucHermitte/vim-refactor', { 'for': ['cpp', 'c'] }
"Plug 'octol/vim-cpp-enhanced-highlight'

" Python plugins
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }

call plug#end()

filetype plugin indent on

"====================
" GENERAL SETTINGS
"====================
set encoding=utf8
set autochdir
set autoread

set nobackup
set nowb
set noswapfile

set laststatus=2
set colorcolumn=80

set cursorline
set number
set relativenumber

set noexpandtab
set shiftwidth=4
set tabstop=4

set mouse=a

set backspace=eol,start,indent

set showmatch

"set foldmethod=syntax
"set foldcolumn=1
"set foldlevelstart=1
"set foldnestmax=10
" odpri vse folde ko ofnas fajl
"autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

colorscheme sourcerer
if has("gui_running")
	set gfn=Envy\ Code\ R\ 9.7
	set go=
	"set bg=light
	set guicursor+=a:blinkon0
	set lines=40 columns=120
endif

syntax on

"====================
" PLUGIN SETTINGS
"====================
let g:cpp_class_scope_highlight = 1
let g:clang_library_path = '/usr/lib/libclang.so'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_close_preview = 1


"====================
" KEY MAPPING
"====================
" Tabs
map <S-l> :tabn<CR>
map <S-h> :tabp<CR>
map <S-n> :tabnew<CR>

" Window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Other
nnoremap <silent> <F7> :NERDTreeToggle<cr>
nnoremap <silent> <F6> :%!xmllint --encode UTF-8 --format -<cr>
nnoremap <silent> <A-f> <x> :%!xmllint --encode UTF-8 --format -<cr>
nnoremap <silent> <A-f> <j> :%!jq '.'<cr>

"====================
" AUTOCOMMANDS
"====================
"autocmd BufWritePre,BufRead *.{c,cpp,h,hpp,py,pyw,cs,java,php,css} SemanticHighlight
			"\ match BadWhitespace /\s\+$/
"autocmd BufWritePre,BufRead *.{py,pyw,js}

autocmd Filetype html set tabstop=2 shiftwidth=2
autocmd Filetype python set expandtab softtabstop=4 shiftwidth=4 textwidth=79
