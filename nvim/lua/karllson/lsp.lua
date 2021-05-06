local nvim_lsp = require('lspconfig')
local root_pattern = nvim_lsp.util.root_pattern
local on_attach = function(client, bufnr)

local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- autocomplete
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}


-- Mappings.
local opts = { noremap=true, silent=true }
buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workleader_folder()<CR>', opts)
-- buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workleader_folder()<CR>', opts)
-- buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workleader_folders()))<CR>', opts)
buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
buf_set_keymap('n', '<leader>ds', '<cmd>lua require(\'karllson.telescope\').dropdown(\'lsp_document_symbols\')<CR>', opts)
buf_set_keymap('n', '<leader>ws', '<cmd>lua require(\'karllson.telescope\').dropdown(\'lsp_workspace_symbols\')<CR>', opts)
buf_set_keymap('n', 'gr', '<cmd>lua require(\'karllson.telescope\').dropdown(\'lsp_references\')<CR>', opts)
buf_set_keymap('n', 'gd', '<cmd>lua require(\'karllson.telescope\').dropdown(\'lsp_definitions\')<CR>', opts)

-- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
-- buf_set_keymap('n', '<leader>f', '<cmd>:Neoformat<CR>', opts)
-- Set some keybinds conditional on server capabilities
-- if client.resolved_capabilities.document_formatting then
--     buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
-- end
-- if client.resolved_capabilities.document_range_formatting then
--     buf_set_keymap("v", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
-- end

-- Set autocommands conditional on server_capabilities
if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#4e4e4e
      hi LspReferenceText cterm=bold ctermbg=red guibg=#4e4e4e
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#4e4e4e
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
    end
end

-- format the shit on save
vim.api.nvim_exec([[
  augroup KARLLSON_LSP_ACM
    autocmd!
    autocmd BufWritePre * Neoformat
  augroup END
]], false)

nvim_lsp.tsserver.setup({
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx"
    },
    on_attach = on_attach
})

nvim_lsp.intelephense.setup{}
nvim_lsp.terraformls.setup{
    filetypes = { "terraform", "hcl", "tf" }
}

