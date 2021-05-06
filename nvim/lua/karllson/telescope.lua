local themes = require('telescope.themes')

-- file stuff
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>Telescope git_files<CR>', opts) 
vim.api.nvim_set_keymap('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opts) 
vim.api.nvim_set_keymap('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', opts) 

require('telescope').setup {
  defaults = {
    prompt_prefix = '❯ ',
    selection_caret = '❯ ',


    winblend = 0,
    preview_cutoff = 120,

    layout_strategy = 'horizontal',
    layout_defaults = {
      horizontal = {
        width_padding = 0.1,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      }
    },

    selection_strategy = "reset",
    prompt_position = "top",
    sorting_strategy = "descending",
    scroll_strategy = "cycle",
    color_devicons = true,
  }
}

-- telescope file and action functions
local M = {}
function M.dropdown(fn_name, previewer)
  local opts = themes.get_dropdown {
    winblend = 10,
    border = true,
    previewer = (previewer or '0') == '1',
    shorten_path = false,
  }

  require('telescope.builtin')[fn_name](opts)
end

return M
