return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    -- update the existing options table
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",      -- show hidden files
        "--no-ignore",   -- don't respect .gitignore
        "--glob=!.git/", -- EXCLUDE .git folder
      },
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
