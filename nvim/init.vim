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
set guicursor=

filetype off
syntax enable
filetype plugin indent on

" Vundle Plugin Manager
call plug#begin('~/.vim/plugged')
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
Plug 'preservim/nerdtree'
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

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'fhill2/telescope-ultisnips.nvim'
" GIT
Plug 'TimUntersberger/neogit'
call plug#end()

" ------------------------------------------------------
" KeyMaps
" ------------------------------------------------------
nnoremap qqq :qa!<CR>
nnoremap <C-h> <C-W><Left>
nnoremap <C-j> <C-W><Down>
nnoremap <C-k> <C-W><Up>
nnoremap <C-l> <C-W><Right>
nnoremap <C-w> :bd<CR>
nnoremap <C-s> :w!<CR>
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprevious<CR>

" LSP autocomplete
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
 
" LSP
nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap gr <cmd>Telescope lsp_references<cr>
nnoremap gi <cmd>Telescope lsp_implementations<cr>
nnoremap <leader>ds <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>ws <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap K <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
    
" Telescope
nnoremap <leader>ft <cmd>lua require('karllson.telescope').file_tree()<cr>
nnoremap <leader>fb <cmd>lua require('karllson.telescope').file_browser()<cr>
nnoremap <leader>ct <cmd>lua require('karllson.telescope').current_tree()<cr>
nnoremap <leader>gc <cmd>lua require('karllson.telescope').grep_current()<cr>
nnoremap <leader>fg <cmd>lua require('karllson.telescope').git_files()<cr>
nnoremap <leader>ff <cmd>lua require('karllson.telescope').find_files()<cr>
nnoremap <leader>gg <cmd>lua require('karllson.telescope').grep()<cr>

" Nerdtree
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-c> :NERDTreeFind<CR>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=['~/dotfiles/snippets']
nnoremap <leader>sn <cmd>lua require'telescope'.extensions.ultisnips.ultisnips{}<cr>

" Testing
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>

" Copy to and from clipboard
nnoremap <leader>yy "+y
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
vnoremap <leader>pp "+p

" Theme
let g:NERDTreeWinSize=60
" colorscheme gruvbox
colorscheme OceanicNext

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

lua require('init')
