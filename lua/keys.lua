local api = vim.api
-- set leader key to comma
vim.g.mapleader = ","
vim.b.mapleader = ","

-- use jk for escape
api.nvim_set_keymap("i", "jk", "<ESC>", {noremap = true})

-- Ctrl+[hjkl] navigate cursor in insert or command mode
api.nvim_set_keymap("i", "<C-h>", "<Left>", {noremap = true})
api.nvim_set_keymap("c", "<C-h>", "<Left>", {noremap = true})
api.nvim_set_keymap("i", "<C-j>", "<Down>", {noremap = true})
api.nvim_set_keymap("c", "<C-j>", "<Down>", {noremap = true})
api.nvim_set_keymap("i", "<C-k>", "<Up>", {noremap = true})
api.nvim_set_keymap("c", "<C-k>", "<Up>", {noremap = true})
api.nvim_set_keymap("i", "<C-l>", "<Right>", {noremap = true})
api.nvim_set_keymap("c", "<C-l>", "<Right>", {noremap = true})

-- save with zz
api.nvim_set_keymap("n", "zz", "<cmd>update<cr>", {noremap = true})
api.nvim_set_keymap("n", "<space>zz", "<cmd>SudaWrite<cr>", {noremap = true})

-- keybind disable hightlights
api.nvim_set_keymap("n", "<leader>l", "<cmd>nohlsearch<cr>", {noremap = true})

-- delete buffer
api.nvim_set_keymap("n", "<space>bd", "<cmd>bd!<cr>", {noremap = true})
