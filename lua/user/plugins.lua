local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'habamax/vim-asciidoctor' -- asciidoctor plugin
  -- use 'ap/vim-buftabline'  -- buffer exploer
  use 'jeetsukumaran/vim-buffergator'
  -- use 'hrsh7th/cmp-nvim-lsp'  -- lsp completion
  use 'williamboman/nvim-lsp-installer'-- lsp installer
  -- format
  -- use "lukas-reineke/lsp-format.nvim"
  use 'voldikss/vim-floaterm'
  use 'editorconfig/editorconfig-vim'
  -- colorscheme
  use "lunarvim/colorschemes"
  use "lunarvim/darkplus.nvim"
  use "lunarvim/onedarker.nvim"
  -- tree-sitter
  use 'nvim-treesitter/nvim-treesitter'
  -- cmp
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  -- snippets
 use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  -- Outline
  use 'simrat39/symbols-outline.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  -- auto save
--  use "Pocco81/AutoSave.nvim"
  -- yanking
  use 'ojroques/vim-oscyank'
  -- file exploer
  use {
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons", -- optional, for file icon
      },
  }
  -- telescope
  use "nvim-lua/plenary.nvim"
  use {
      'nvim-telescope/telescope.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- TODO
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
  -- buffer UI
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  -- vim surround
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs"
  -- buffer dekete
  use 'famiu/bufdelete.nvim'
  -- airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  -- session
--  use  'Shatur/neovim-session-manager'
  use {
    'jedrzejboczar/possession.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
