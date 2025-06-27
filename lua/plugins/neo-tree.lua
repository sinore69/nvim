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
        visible = true,
        force_visible_in_empty_folder = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {},
        never_show = {},
        never_show_by_pattern = {},
      },
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true,
    },
  },
}
