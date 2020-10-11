call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'


" display lightline
set laststatus=2
set noshowmode

call plug#end()

syntax on
let g:gruvbox_contrast_dark = 'hard'
" colorscheme
colorscheme gruvbox

set background=dark
set number
set expandtab
set tabstop=4
set autoindent
set fileformat=unix
set textwidth=79
set autoindent
set hlsearch "highlight when search
set incsearch
set mousehide "hide mouse when writing
set wrap
set linebreak


let python_highlight_all = 1 " highlight python syntaxis

" cutoff spaces in python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e `` 
" smart indent after special words
autocmd bufread *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" mouse
set mouse=a
let g:is_mouse_enabled = 1

" movements in insert mode
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

" mappings
map <c-n> :nerdtreetoggle<cr>
iab pdb import pdb; pdb.set_trace()
noremap <f4> :set hlsearch! hlsearch?<cr>

" Ale
let g:ale_fixers = {'python': ['isort', 'black']}
let g:ale_linters = {'python': ['pylint', 'prospector', 'flake8']}
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


