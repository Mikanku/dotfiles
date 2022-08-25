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

end)
