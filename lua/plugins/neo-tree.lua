return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      cwd_target = {
        sidebar = "cwd",
        current = "cwd",
      },
      filtered_items = {
        visible = true,             -- Show the filtered items
        force_visible_in_empty_folder = true,
        hide_dotfiles = false,      -- Don't hide dotfiles
        hide_gitignored = false,    -- Don't hide gitignored files
        hide_by_name = {},          -- Don't hide by name
        never_show = {},            -- Don't exclude anything ever
        never_show_by_pattern = {}, -- Don't exclude by pattern
      },
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true,
    },
  },
}
