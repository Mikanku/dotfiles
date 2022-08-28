local packer = require("packer")

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/solarized.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }
  -- topbar and bottombar
  use 'akinsho/bufferline.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- telescope(fuzzy finder) need dependencies riggrep fd
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  use 'glepnir/dashboard-nvim'
  use 'ahmedkhalf/project.nvim'

  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  -- LSP("务必要确保顺序")
  use 'williamboman/mason.nvim'
  use { 'williamboman/mason-lspconfig.nvim', after = 'mason.nvim' }
  use { 'neovim/nvim-lspconfig', after = 'mason-lspconfig' }
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",  --neovim Lua API
      { "L3MON4D3/LuaSnip",
      requires = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
      },
    },
  },
}

end)
