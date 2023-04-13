local api = require("nvim-tree.api")

-- UNUSABLE: Open up netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines up/down in Visual Mode using J/K
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- For interacting with NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<cr>")

