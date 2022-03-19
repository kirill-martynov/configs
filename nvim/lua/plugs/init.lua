-- [[ plug ]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- [[ UI ]]
  use { 'arcticicestudio/nord-vim' }
  use { 'overcache/NeoSolarized' }
  use { 'ishan9299/nvim-solarized-lua' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'akinsho/bufferline.nvim' }
  use { 'nvim-telescope/telescope.nvim' }

  -- [[ IntelliSense ]]
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { 'neovim/nvim-lspconfig' }
  use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }

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
  use { 'mhartington/formatter.nvim' }
  use { 'numToStr/Comment.nvim' }

  -- [[ Git ]]
  use { 'lewis6991/gitsigns.nvim' }
  use { 'f-person/git-blame.nvim' }
end)
