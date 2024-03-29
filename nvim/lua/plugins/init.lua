return require("packer").startup(function(use)
  -- Plugin manager
  use { "wbthomason/packer.nvim" }

  -- Colorschemes
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Lua functions
  use { "nvim-lua/plenary.nvim" }

  -- Icons
  --[[ use { "nvim-tree/nvim-web-devicons" } ]]

  -- File explorer
  use { "nvim-tree/nvim-tree.lua" }

  -- Bufferline
  use { "akinsho/bufferline.nvim", tag = "*" }

  -- Statusline
  use { "nvim-lualine/lualine.nvim" }

  -- Statusline/Winbar component that uses LSP
  use { "SmiteshP/nvim-navic" }

  -- Fuzzy finder
  use { "nvim-telescope/telescope.nvim" }

  -- Fuzzy finder syntax support
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- Search panel
  use { "windwp/nvim-spectre" }

  -- Syntax highlighting
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  use { "nvim-treesitter/nvim-treesitter-textobjects" }

  -- Built-in LSP
  use { "neovim/nvim-lspconfig" }

  -- Formatting and linting
  use { "jose-elias-alvarez/null-ls.nvim" }

  -- A light-weight lsp plugin
  use { "tami5/lspsaga.nvim", branch = "main" }

  -- List to help you solve all the troubles in code
  use { "folke/trouble.nvim" }

  -- Completion engine
  use { "hrsh7th/nvim-cmp" }

  -- Buffer completion source
  use { "hrsh7th/cmp-buffer" }

  -- Path completion source
  use { "hrsh7th/cmp-path" }

  -- LSP completion source
  use { "hrsh7th/cmp-nvim-lsp" }

  -- VSCode(LSP)'s snippet feature in vim/nvim.
  use { "hrsh7th/vim-vsnip" }
  use { "hrsh7th/cmp-vsnip" }

  -- Source for vim's cmdline.
  use { "hrsh7th/cmp-cmdline" }

  -- Parentheses, brackets, quotes, XML tags, and more
  use { "tpope/vim-surround" }

  -- Autoclose tags
  use { "windwp/nvim-ts-autotag" }

  -- Editor config
  use { "gpanders/editorconfig.nvim" }

  -- Commenting
  use { "numToStr/Comment.nvim" }

  -- Context based commenting
  use { "JoosepAlviste/nvim-ts-context-commentstring" }

  -- LSP Icons
  use { "onsails/lspkind-nvim" }

  -- Highlighting the word under the cursor
  use { "RRethy/vim-illuminate" }

  -- Multi cursor
  use { "mg979/vim-visual-multi" }

  -- Start screen
  use { "goolord/alpha-nvim" }

  -- Git integration
  use { "lewis6991/gitsigns.nvim" }

  -- Autopairs
  use { "windwp/nvim-autopairs" }

  -- Keymaps popup
  use { "folke/which-key.nvim" }
end)
