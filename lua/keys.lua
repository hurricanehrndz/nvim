local api = vim.api
-- set leader key to space
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Toggle Terminal (Drawer)
termdrawer = require("lib.termdrawer")
api.nvim_set_keymap("n", "<leader>kh", "<cmd>lua termdrawer.toggle(1)<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>kj", "<cmd>lua termdrawer.toggle(2)<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>kk", "<cmd>lua termdrawer.toggle(2)<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>kl", "<cmd>lua termdrawer.toggle(2)<CR>", {noremap = true})

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

-- Alt+[hjkl] navigate windows
api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {noremap = true})
api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {noremap = true})
api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {noremap = true})
api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {noremap = true})

-- Alt+[hjkl] navigate windows from terminal drawer
api.nvim_set_keymap("t", "<A-h>", [[<C-\><C-N><C-w>h]], {noremap = true})
api.nvim_set_keymap("t", "<A-j>", [[<C-\><C-N><C-w>j]], {noremap = true})
api.nvim_set_keymap("t", "<A-k>", [[<C-\><C-N><C-w>k]], {noremap = true})
api.nvim_set_keymap("t", "<A-l>", [[<C-\><C-N><C-w>l]], {noremap = true})


-- keybind disable hightlights
api.nvim_set_keymap("n", "<leader>l", "<cmd>nohlsearch<cr>", {noremap = true})
