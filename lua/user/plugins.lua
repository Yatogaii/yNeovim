local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'habamax/vim-asciidoctor' -- asciidoctor plugin
  use 'vim-airline/vim-airline' -- airline
  use 'vim-airline/vim-airline-themes' -- theme plugin
end)
