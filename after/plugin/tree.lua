-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    -- width = 30,
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "U", action = "dir_down" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "name",
    icons = {
      show = {
        git = true,
        folder = false,
        file = true,
        folder_arrow = true
      }
    }
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    -- open_file = { quit_on_open = false }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  }
})
