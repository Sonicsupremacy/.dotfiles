set nocompatible
filetype off

"====================
" PLUGINS
"====================
call plug#begin('~/.vim/plugged')

Plug 'Rip-Rip/clang_complete', { 'for': ['cpp', 'c'] }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'fholgado/minibufexpl.vim'
Plug 'vim-jp/vim-cpp'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/a.vim'
Plug 'Raimondi/delimitMate'
Plug 'jeaye/color_coded'
"Plug 'jaxbot/semantic-highlight.vim'
"Plug 'scrooloose/syntastic'

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
	set gfn=Envy\ Code\ R\ 10
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
map  <S-l> :tabn<CR>
map  <S-h> :tabp<CR>
map  <S-n> :tabnew<CR>

" Window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <silent> <F7> :NERDTreeToggle<cr>

"====================
" AUTOCOMMANDS
"====================
"autocmd BufWritePre,BufRead *.{c,cpp,h,hpp,py,pyw,cs,java,php,css} SemanticHighlight
			"\ match BadWhitespace /\s\+$/

autocmd Filetype html set tabstop=2 shiftwidth=2
autocmd Filetype python set expandtab softtabstop=4 shiftwidth=4 textwidth=79
