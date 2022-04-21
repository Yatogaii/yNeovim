local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'habamax/vim-asciidoctor' -- asciidoctor plugin
  -- use 'ap/vim-buftabline'  -- buffer exploer
  use 'jeetsukumaran/vim-buffergator'
  -- use 'hrsh7th/cmp-nvim-lsp'  -- lsp completion
  use 'williamboman/nvim-lsp-installer'-- lsp installer
  use 'voldikss/vim-floaterm'
  -- colorscheme
  use "lunarvim/colorschemes"
  use "lunarvim/darkplus.nvim"
  use "lunarvim/onedarker.nvim"
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
  -- file exploer
  use {
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons", -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }
  -- telescope
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- buffer UI
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  -- vim surround
  use "tpope/vim-surround"
  -- buffer dekete
  use 'famiu/bufdelete.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
