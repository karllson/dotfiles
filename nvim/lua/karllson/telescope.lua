local themes = require('telescope.themes')

require('telescope').setup {
  defaults = {
    prompt_prefix = '❯ ',
    selection_caret = '❯ ',
    color_devicons = true,
  }
}

-- telescope file and action functions
local M = {}

M.file_tree = function()
    require('telescope.builtin').file_browser()
end

M.git_files = function()
    require('telescope.builtin').git_files()
end

M.find_files = function()
    require('telescope.builtin').find_files()
end

M.grep = function()
    require('telescope.builtin').live_grep()
end

M.document_symbols = function()
    require('telescope.builtin').lsp_document_symbols({
        previewer = false
    })
end

M.workspace_symbols = function()
    require('telescope.builtin').lsp_workspace_symbols({
        previewer = false
    })
end

M.lsp_references = function()
    require('telescope.builtin').lsp_references()
end

M.lsp_definitions = function()
    require('telescope.builtin').lsp_definitions()
end


return M
