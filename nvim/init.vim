set path+=**
:let mapleader = " "

set nocompatible             
set encoding=UTF-8
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4    
set expandtab
set autoindent
set copyindent
set ttimeoutlen=50 
set timeoutlen=1000
set smartindent
set termguicolors
set hidden
set background=dark
set nobackup
set nowritebackup
set noswapfile
set cmdheight=1
set updatetime=300
set nohlsearch
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
set signcolumn=yes
set completeopt=menuone,noselect
set shortmess+=c " Don't pass messages to ins-completion-menu

filetype off
syntax enable
filetype plugin indent on

" Vundle Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch' " delete buffers etc
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'
Plug 'vim-test/vim-test'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'gruvbox-community/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
" Prettier
Plug 'sbdchd/neoformat'

" Icons
Plug 'ryanoasis/vim-devicons'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'yamatsum/nvim-web-nonicons'
call plug#end()

" KeyMaps
nnoremap qqq :qa!<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeFind<cr>
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
nnoremap <C-h> <C-W><Left>
nnoremap <C-j> <C-W><Down>
nnoremap <C-k> <C-W><Up>
nnoremap <C-l> <C-W><Right>
nnoremap <Leader>w :bd<CR>
nnoremap <Leader>s :w!<CR>
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprevious<CR>
tnoremap <Esc><Esc> <C-\><C-n>

" LSP autocomplete
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Testing
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>

" Quickfix List
" Taken from the awesome prime
nnoremap <leader>qk :cnext<CR>
nnoremap <leader>qj :cprev<CR>
nnoremap <leader>ql :call ToggleQFList(1)<CR>
nnoremap <leader>qll :call ToggleQFList(0)<CR>

" Copy to and from clipboard
nnoremap <leader>yy "+y
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
vnoremap <leader>pp "+p

" Theme
let g:NERDTreeWinSize=60
" colorscheme gruvbox
colorscheme OceanicNext

lua require('init')
