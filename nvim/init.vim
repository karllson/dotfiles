:set number
:let mapleader = ","
set nocompatible             
set encoding=UTF-8

" Vundle Plugin Manager
filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'mhartington/oceanic-next' " Neovim theme
Plugin 'ayu-theme/ayu-vim' " Ayu vim
call vundle#end()
filetype plugin indent on


" Tabline settings
let g:airline#extensions#tabline#enabled = 1

" KeyMaps
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-j> :bprevious<CR>
nnoremap <C-l> :bnext<CR>


" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Language/Intelli
let g:ale_linters = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_fixers = {
 \ 'javascript': ['prettier'],
 \ 'typescript': ['prettier']
 \ }
let g:ale_fix_on_save = 1

" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
"colorscheme OceanicNext
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

