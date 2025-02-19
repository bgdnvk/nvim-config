return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = {
      "filesystem",
      "buffers",
      "git_status", -- Enable git integration
    },
    window = {
      width = 40, -- Adjust width to a more suitable value
      auto_expand_width = true, -- Allow Neo-tree to auto-resize based on content
    },
    filesystem = {
      follow_current_file = {
        enabled = true, -- Automatically focus the current file
      },
      hijack_netrw_behavior = "open_current", -- Open Neo-tree in the current window
      use_libuv_file_watcher = true, -- Use libuv for better performance
    },
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        default = "",
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "",
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
      },
    },
    keymaps = {
      ["<CR>"] = "open",
      ["<C-x>"] = "close_node",
      ["<C-r>"] = "refresh",
    },
  },
}
