-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --colorscheme
  use 'shoukoo/mei.nvim'

  --TreeSitter and TreeSitter playground
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'nvim-treesitter/playground'

  --harpoon
  use 'nvim-lua/plenary.nvim' --" don't forget to add this one if you don't have it yet!
  use 'ThePrimeagen/harpoon'
  --undotree
  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'
end)
