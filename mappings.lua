local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>q"] = "",
      ["<C-s>"] = ""
  }
}

M.abc = {

  n = {
     ["<leader>w"] = { "<cmd> w <CR>", "save file" },
     ["<leader>q"] = { "<cmd> q <CR>", "save file" },
     ["<C-s>"] = { "<cmd> w! <CR>", "save file" },

  },

  i = {
    -- more keys!
  }
}

M.xyz = {
  -- stuff
}

return M
