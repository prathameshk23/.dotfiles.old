local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- PackerSync of save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Dependencies
  use "nvim-tree/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"

  -- Dracula theme
  use {'dracula/vim', as = 'dracula'}
  use "folke/tokyonight.nvim"

  use 'nvim-tree/nvim-tree.lua'
  use  "nvim-lualine/lualine.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use {"nvim-telescope/telescope.nvim", tag = '0.1.0'}

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use 'andweeb/presence.nvim'

  -- nvim-cmp
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp'
  }

  use {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }

  use "jose-elias-alvarez/null-ls.nvim"

  use "kdheepak/lazygit.nvim"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
