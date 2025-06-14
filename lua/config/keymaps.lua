-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "s", "^", { desc = "Go to first non-blank character" })
keymap.set("n", "e", "$", { desc = "Go to last non-blank character" })
keymap.set("n", "j", "k", { desc = "Go Up" })
keymap.set("n", "k", "j", { desc = "Go Down" })
keymap.set("n", "r", "<C-r>", { desc = "Redo" })
keymap.set("v", "j", "k", { desc = "Go Up" })
keymap.set("v", "k", "j", { desc = "Go Down" })
keymap.set("v", "s", "^", { desc = "Go to first non-blank character" })
keymap.set("v", "e", "$", { desc = "Go to last non-blank character" })
keymap.set('n', '<C-r>', ':vsplit<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-b>', ':split<CR>', { noremap = true, silent = true })
keymap.set('n', '[[', 'gg', { noremap = true, silent = true })
keymap.set('n', ']]', 'G', { noremap = true, silent = true })
keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tt", function()
  local cwd = vim.fn.getcwd()
  vim.cmd("split")
  vim.cmd("terminal fish")
  vim.cmd("startinsert")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. cwd .. "\n")
end, { desc = "Open terminal in cwd (fish)" })

-- Close terminal and delete buffer in normal mode
vim.keymap.set("n", "<leader>tc", function()
  if vim.bo.buftype == "terminal" then
    vim.cmd("bdelete!")
  else
    vim.notify("Not a terminal window", vim.log.levels.WARN)
  end
end, { desc = "Delete terminal buffer" })

-- Close terminal and delete buffer in terminal mode
vim.keymap.set("t", "<leader>tc", function()
  -- Exit terminal mode first
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", false)
  -- Then delete the terminal buffer
  vim.cmd("bdelete!")
end, { desc = "Delete terminal buffer (terminal mode)" })

vim.keymap.set("t", "<leader>tr", function()
  local cwd = vim.fn.getcwd()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", false)
  vim.cmd("vsplit")
  vim.cmd("terminal fish")
  vim.cmd("startinsert")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. cwd .. "\n")
end, { desc = "Split terminal vertically (Fish)" })

vim.keymap.set("t", "<leader>tb", function()
  local cwd = vim.fn.getcwd()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", false)
  vim.cmd("split")
  vim.cmd("terminal fish")
  vim.cmd("startinsert")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. cwd .. "\n")
end, { desc = "Split terminal horizontally (Fish)" })
