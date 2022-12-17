local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("", "<leader>gg", ":LazyGit<CR>", opts)
