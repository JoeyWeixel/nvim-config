return {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    lazy = false,
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = function ()
        return ({
            filters = { dotfiles = false },
            disable_netrw = true,
            hijack_cursor = true,
            sync_root_with_cwd = true,
            update_focused_file = {
              enable = true,
              update_root = false,
            },
            view = {
              width = 30,
              preserve_window_proportions = true,
            },
            renderer = {
              root_folder_label = false,
              highlight_git = true,
              indent_markers = { enable = true },
              icons = {
                glyphs = {
                  default = "󰈚",
                  folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                  },
                  git = { unmerged = "" },
                },
              },
            },
          })
    end,
    config = function ()
        require("nvim-tree").setup {}

        local api = require "nvim-tree.api"
        local opts = {remap = false}

        vim.keymap.set("n", "<C-e>", api.tree.open, opts)
        vim.keymap.set("n", "<leader><C-e>", api.tree.toggle, opts)
    end,
  }
