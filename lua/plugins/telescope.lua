return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
          follow = true,
        })
      end,
      desc = "Find Files (all, including gitignored)",
    },
  },
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--no-ignore",
        "--glob=!.git/",
        "--glob=!node_modules/**",
      },
      file_ignore_patterns = { "node_modules" },
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      find_files = {
        hidden = true,
        no_ignore = true,
        follow = true,
      },
    })

    return opts
  end,
}
