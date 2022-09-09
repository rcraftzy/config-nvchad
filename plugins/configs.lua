local M = {}

M.treesitter = {
  override_options = {
    indent = { enable = true },
    rainbow = {
      enable = true,
      colors = {
        "#FFB86C",
        "#8BE9FD",
        "#BD93F9",
        "#50FA7B",
        "#F1FA8C",
        "#FF79C6",
      },
      disable = { "html" },
    },
  },
}
M.mason = {
  override_options = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "deno",
      "emmet-ls",
      "json-lsp",

      -- shell
      "shfmt",
      "shellcheck",
    },
  },
}
M.nvimtree = {
  override_options = {
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      timeout = 400,
    },
    view = {
      side = "right",
      width = 20,
    },
    diagnostics = {
      enable = true,
      show_on_dirs = false,
      debounce_delay = 50,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    renderer = {
      add_trailing = false,
      group_empty = true,
      highlight_git = true,
      full_name = false,
      highlight_opened_files = "none",
      root_folder_modifier = ":~",
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = "└",
          edge = "│",
          item = "│",
          none = " ",
        },
      },
      icons = {
        webdev_colors = true,
        git_placement = "before",
        padding = " ",
        symlink_arrow = " ➛ ",
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
        glyphs = {
          default = "",
          symlink = "",
          bookmark = "",
          folder = {
            arrow_closed = "",
            arrow_open = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌",
          },
        },
      },
      special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
      symlink_destination = true,
    },
    log = {
      enable = false,
      truncate = false,
      types = {
        all = false,
        config = false,
        copy_paste = false,
        dev = false,
        diagnostics = true,
        git = true,
        profile = false,
        watcher = false,
      },
    },
  },
}

return M
