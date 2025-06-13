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
