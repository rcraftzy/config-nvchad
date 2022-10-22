local pluginConfs = require "custom.plugins.configs"

return {
  -- Override config
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = pluginConfs.mason,
  ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,

  -- New pluggins
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["p00f/nvim-ts-rainbow"] = {},
  ["NTBBloodbath/rest.nvim"] = {
    requires = { "nvim-lua/plenary.nvim" },
    config = function ()
      require "custom.plugins.rest"
    end,
  },
}
