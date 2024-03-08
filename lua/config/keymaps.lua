-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Map lazy to <leader>space
keymap("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Map kj to esc
keymap("i", "kj", "<Esc>", { noremap = true, silent = true, desc = "Escape" })

-- Map leader + h and leader + l to move to the beginning and end of the line
keymap("n", "<Leader>h", "^", { noremap = true, silent = true, desc = "Go to start of line" })
keymap("n", "<Leader>l", "$", { noremap = true, silent = true, desc = "Go to end of line" })

-- Restore Y over yy.
keymap("n", "Y", "yy", { noremap = true, silent = true, desc = "Yank whole line" })

-- Easy buffer navigation
keymap("n", ";;", "<cmd>b#<cr>", { desc = "Switch to last buffer" })
keymap("n", ";e", "<cmd>Telescope buffers<cr>", { desc = "Buffer explorer" })
keymap("n", ";d", "<cmd>bd#<cr>", { desc = "Delete current buffer" })

-- Inc rename
keymap("n", "<leader>rn", ":IncRename ")
