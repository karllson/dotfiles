:let mapleader = ","
set nocompatible             
set encoding=UTF-8
:set number relativenumber
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
set shortmess+=c " Don't pass messages to |ins-completion-menu|.
set nohlsearch
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set colorcolumn=120
set signcolumn=yes

filetype off
syntax enable
filetype plugin indent on

" Vundle Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim' " Ayu vim
Plug 'leafgarland/typescript-vim' " typescript syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'pangloss/vim-javascript'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Plug 'neovim/nvim-lspconfig'
call plug#end()


let g:NERDTreeWinSize=60
let g:airline#extensions#tabline#enabled = 1

" KeyMaps
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
nnoremap <S-j> :bprevious<CR> 
nnoremap <S-l>   :bnext<CR>
nnoremap <C-w>l <C-W><Right>
nnoremap <C-w>j <C-W><Left>
nnoremap <C-w>i <C-W><Up>
nnoremap <C-w>k <C-W><Down>
nnoremap <Leader>w :bd<CR>
nnoremap <Leader>s :update<CR>
nnoremap <Leader>t :NERDTreeFind<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Console log 
imap cll console.log();<Esc>==f(a
vmap cll yocll<Esc>p
nmap cll yiwocll<Esc>p


" Theme
autocmd vimenter * ++nested colorscheme gruvbox
" Transparent BG
" hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:gruvbox_italic = 1




