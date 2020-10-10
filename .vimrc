call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'

"colorscheme
Plug 'morhetz/gruvbox'

" display lightline
set laststatus=2
set noshowmode


call plug#end()

syntax on
colorscheme gruvbox



set background=dark "dark theme"
set number
set expandtab
set tabstop=4
set fileformat=unix
set textwidth=79
set autoindent
set hlsearch
set incsearch

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

" Reset search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>

"movements in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
