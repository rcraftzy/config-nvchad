local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
    ["<leader>q"] = "",
    ["<C-s>"] = "",
  },
}

M.abc = {

  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "save file" },
    ["<leader>q"] = { "<cmd> q <CR>", "save file" },
    ["<C-q>"] = { "<cmd> q! <CR>", "save file" },
    ["<C-s>"] = { "<cmd> w! <CR>", "save file" },

    ["<leader>rr"] = {"<cmd> lua require ('rest-nvim').run() <CR>", opts = { noremap = true } },
    ["<leader>rl"] = { "<cmd> lua require ('rest-nvim').last() <CR>", opts = { noremap = true } },
    ["<leader>rp"] = { "<cmd> lua require ('rest-nvim').run(true) <CR>", opts = { noremap = true } },
  },

  i = {
    -- more keys!
  },
}
M.rest = {}

M.xyz = {
  -- stuff
}

return M
