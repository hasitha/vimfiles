set nocompatible

call pathogen#infect()
syntax on
filetype plugin indent on

set nu
set wrap
set tabstop=2 shiftwidth=2 expandtab autoindent
set incsearch
set hlsearch
set ignorecase smartcase
set scrolloff=2

syntax on
set history=50
set ruler
set showcmd
set laststatus=2

syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on
set encoding=utf-8
set fileencoding=utf-8
set nobackup
set autoread

" keyboard shortcuts for buffer navigation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" keyboard shortcuts for tab switching
nnoremap <silent> <C-TAB> :tabnext<CR>
nnoremap <silent> <C-S-TAB> :tabprevious<CR>

" keyboard shortcuts for tab switching
nnoremap <silent> <C-TAB> :tabnext<CR>
nnoremap <silent> <C-S-TAB> :tabprevious<CR>

" forces use of hklm for navigating in a document
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ctrlp configuration
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }

" rake.vim additions
map <leader>a :A<CR>

" powerline configuration
let g:Powerline_symbols = 'fancy'

" Explicitly tell vim that the terminal supports 256 colors
set t_Co=256

" tagbar configuration
nmap <F8> :TagbarToggle<CR>

" c# specific configuration
if has("autocmd")
  filetype on
  autocmd FileType cs setlocal ts=4 sts=4 sw=4 et
endif

" remap for macbook pro french keyboard
map <C-L> <C-]>
inoremap kj <Esc>
cmap <C-P> <Up>
cmap <C-N> <Down>

" ack configuration
let g:ackprg="ack -H --nocolor --nogroup --column --ignore-dir=node_modules"
