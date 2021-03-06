call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'

" Plug 'juanedi/predawn.vim'
"----------------------

call plug#end()

syntax on



if has('termguicolors')
  set termguicolors
endif


"-----------------------
" colorscheme predawn
colorscheme gruvbox
"-----------------------

set background=dark
set number
set expandtab
" set tabstop=4
autocmd Filetype python setlocal tabstop=4
autocmd Filetype yaml setlocal tabstop=2
set autoindent
" set textwidth=79
set nowrap

set hlsearch "highlight when search
set incsearch
set mousehide "hide mouse when writing

" color column
set cc=80 
hi ColorColumn ctermbg=green
"----------------------

set fileformat=unix
set linebreak
set spell
hi clear SpellBad
hi SpellBad cterm=underline

let python_highlight_all = 1 " highlight python syntax

" cutoff spaces in python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e `` 

" smart indent after special words
autocmd bufread *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" mouse
set mouse=a
let g:is_mouse_enabled = 1
"-----------------------

" movements in insert mode
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

" mappings
noremap <C-n> :NERDTreeToggle<cr>
noremap <C-t> :TagbarToggle<cr>
iab pdb import pdb; pdb.set_trace()
noremap <f4> :set hlsearch! hlsearch?<cr>
"-----------------------

" Ale
let g:ale_fixers = {'python': ['isort',  'autopep8']}  " 'black'
let g:ale_linters = {'python': ['flake8']}  " 'pylint', 'prospector'
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 1
let g:ale_lint_on_enter = 1

" Ale fix python
nnoremap <leader>pf :ALEFix <CR>
" Ale go to definition
nnoremap <leader>gd :ALEGoToDefinition <CR>
" Ale go to a next error
nnoremap <leader>aj :ALENext<CR>

