local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<cr>")

