-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local highlights = require "custom.highlights"
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "chadracula",
  hl_override = highlights,
  transparency = true,
}

local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  user = require "custom.plugins",
  ["williamboman/mason.nvim"] = pluginConfs.mason,
  ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
}

M.mappings = require "custom.mappings"

return M
