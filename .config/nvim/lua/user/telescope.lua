local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<ESC>"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
    },
    git_status = {
      git_icons = {
        added = " ",
        changed = " ",
        copied = " ",
        deleted = " ",
        renamed = "➡",
        unmerged = " ",
        untracked = " ",
      },
    },
  },
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.git_status, {})
