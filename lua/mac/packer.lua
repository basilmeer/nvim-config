-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -----------------------------------------------------------
  ------------------------ Themes ---------------------------
  -----------------------------------------------------------
  use { 'rose-pine/neovim'}
  use { 'catppuccin/nvim'}
  use { 'nyoom-engineering/oxocarbon.nvim' }
  use { 'rebelot/kanagawa.nvim' }
  use({
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      vim.cmd('colorscheme tokyonight-night')
    end
  })

  -----------------------------------------------------------
  ------------------- Treesitter and co ---------------------
  -----------------------------------------------------------
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {'nvim-treesitter/playground'}

  -----------------------------------------------------------
  ------------------ Improved experience --------------------
  -----------------------------------------------------------
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'karb94/neoscroll.nvim'
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use { 'norcalli/nvim-colorizer.lua' }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'APZelos/blamer.nvim' }
  use { 'BurntSushi/ripgrep' }
  use { 'akinsho/nvim-bufferline.lua' }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  -- use { 'windwp/nvim-ts-autotag' }
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }
  use {
    'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup() end
  }
  use { 'juanchanco/vim-jbuilder' }

  -----------------------------------------------------------
  ------------------------ LSPs -----------------------------
  -----------------------------------------------------------
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
  use { 'onsails/lspkind.nvim' }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup({
        symbol_in_winbar = {
          enable = false,
          separator = "bruv"
        }
      })
    end,
    requires = {
      {"nvim-tree/nvim-web-devicons"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  })
  use { 'jose-elias-alvarez/null-ls.nvim' }
end)
