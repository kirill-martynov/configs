-- [[ plug ]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- [[ UI ]]
  use { 'navarasu/onedark.nvim' }
  use { 'projekt0n/github-nvim-theme' }
  use { 'ishan9299/nvim-solarized-lua' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'goolord/alpha-nvim' }
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'akinsho/bufferline.nvim', tag = '*' }
  use {
  "nvim-telescope/telescope-frecency.nvim",
  requires = {"tami5/sqlite.lua"}
  }
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = {
		  { 'nvim-lua/plenary.nvim' },
		  {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	  }
  }


  -- [[ IntelliSense ]]
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { "nvim-treesitter/nvim-treesitter-textobjects" }
  use { 'neovim/nvim-lspconfig' }
  -- use { 'williamboman/nvim-lsp-installer' }
  use { 'jose-elias-alvarez/null-ls.nvim'}
  use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
  use { "folke/trouble.nvim" }

  -- [[ Autocompletion ]]
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'onsails/lspkind-nvim' }

  -- [[ Editing ]]
  use { 'tpope/vim-surround' }
  use { 'numToStr/Comment.nvim' }
  use { 'windwp/nvim-autopairs' }
  use { 'windwp/nvim-ts-autotag' }
  use { 'gpanders/editorconfig.nvim' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use { 'RRethy/vim-illuminate' }
  use { 'mg979/vim-visual-multi' }

  -- [[ Git ]]
  use { 'lewis6991/gitsigns.nvim' }
  use { 'tpope/vim-fugitive' }
end)
