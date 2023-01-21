local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("", "<leader>fr", ":FlutterRun<CR>", opts)
keymap("", "<leader>fe", ":FlutterRestart<CR>", opts)
