set nocompatible
filetype off

"====================
" PLUGINS
"====================
call plug#begin('~/.vim/plugged')

Plug 'fholgado/minibufexpl.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'jaxbot/semantic-highlight.vim'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-scripts/a.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'Raimondi/delimitMate'
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
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

let g:nerdtree_tabs_open_on_gui_startup = 0


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
autocmd BufWritePre,BufRead *.{c,cpp,h,hpp,py,pyw,cs,java,php,css} SemanticHighlight
			"\ match BadWhitespace /\s\+$/

autocmd Filetype html set tabstop=2 shiftwidth=2
autocmd Filetype python set expandtab softtabstop=4 shiftwidth=4 textwidth=79
