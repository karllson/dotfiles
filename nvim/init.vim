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
set nohlsearch
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
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
Plug 'neovim/nvim-lspconfig'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Complete
Plug 'nvim-lua/completion-nvim'
Plug 'sbdchd/neoformat' " prettier
call plug#end()

" LSP Stuff
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.intelephense.setup{ on_attach=require'completion'.on_attach }

let g:NERDTreeWinSize=60
let g:airline#extensions#tabline#enabled = 1

" Completion
set completeopt=menuone,noinsert,noselect
set shortmess+=c " Don't pass messages to ins-completion-menu
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

" KeyMaps
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
nnoremap <S-j> :bprevious<CR> 
nnoremap <S-l> :bnext<CR>
nnoremap <C-w>l <C-W><Right>
nnoremap <C-w>j <C-W><Left>
nnoremap <C-w>i <C-W><Up>
nnoremap <C-w>k <C-W><Down>
nnoremap <Leader>w :bd<CR>
nnoremap <Leader>s :write<CR>
nnoremap <Leader>t :NERDTreeFind<cr>
nnoremap <silent> <leader>f :Format<CR>
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <C-p>:lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <Leader>fg :lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <Leader>ff :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>fs <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>ft <cmd>Telescope lsp_references<cr>
nnoremap <S-k> <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
imap <silent> <C-space> <Plug>(completion_trigger)

" autoformat prettier
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

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

" NEOFORMAT
let g:neoformat_php_phpcsfixer= {
           \ 'exe': 'php-cs-fixer',
           \ 'args': ['fix', '-q'],
           \ 'replace': 1,
           \ }


let g:neoformat_enabled_php= ['phpcsfixer']

