return {
  "JellyApple102/snacks.nvim",
  config = function()
    require("snacks").setup()

    -- Safely patch jump() to avoid E325 swap errors
    local actions = require("snacks.picker.actions")
    actions.jump = function(entry)
      local file = entry.filename
      local lnum = entry.lnum or 1

      -- Use silent! and e! to force open the file
      local ok = pcall(function()
        vim.cmd("silent! e! " .. vim.fn.fnameescape(file))
        vim.api.nvim_win_set_cursor(0, { lnum, 0 })
      end)

      if not ok then
        vim.notify("Failed to jump to file: " .. file, vim.log.levels.WARN)
      end
    end
  end,
}
