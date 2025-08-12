-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

 -- Treesitter
 use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

 -- fugitive
 use('tpope/vim-fugitive')

 -- theme 
 use({
	 'projekt0n/github-nvim-theme',
	 config = function()
		 require('github-theme')
		 vim.cmd('colorscheme github_dark_default')
	 end
 })
end)
