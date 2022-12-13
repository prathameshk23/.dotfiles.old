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

return require("packer").startup(function()
  use "wbthomason/packer.nvim"

  -- Dependencies
  use "nvim-tree/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"

  -- Dracula theme
  use {'dracula/vim', as = 'dracula'}

  use 'nvim-tree/nvim-tree.lua'
  use  "nvim-lualine/lualine.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use {"nvim-telescope/telescope.nvim", tag = '0.1.0'}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
