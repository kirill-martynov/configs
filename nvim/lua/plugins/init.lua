-- [[ plug ]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- [[ UI ]]
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
  use { "nvim-treesitter/nvim-treesitter-textobjects" }
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'jose-elias-alvarez/null-ls.nvim'}
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
  use { 'numToStr/Comment.nvim' }
  use { 'windwp/nvim-autopairs' }
  use { 'windwp/nvim-ts-autotag' }
  use { 'gpanders/editorconfig.nvim' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }

  -- [[ Git ]]
  use { 'lewis6991/gitsigns.nvim' }
end)
