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

-- Airline keybinds
api.nvim_set_keymap("n", "<leader>1", "<Plug>AirlineSelectTab1", {})
api.nvim_set_keymap("n", "<leader>2", "<Plug>AirlineSelectTab2", {})
api.nvim_set_keymap("n", "<leader>3", "<Plug>AirlineSelectTab3", {})
api.nvim_set_keymap("n", "<leader>4", "<Plug>AirlineSelectTab4", {})
api.nvim_set_keymap("n", "<leader>5", "<Plug>AirlineSelectTab5", {})
api.nvim_set_keymap("n", "<leader>6", "<Plug>AirlineSelectTab6", {})
api.nvim_set_keymap("n", "<leader>7", "<Plug>AirlineSelectTab7", {})
api.nvim_set_keymap("n", "<leader>8", "<Plug>AirlineSelectTab8", {})
api.nvim_set_keymap("n", "<leader>9", "<Plug>AirlineSelectTab9", {})
api.nvim_set_keymap("n", "<leader>0", "<Plug>AirlineSelectTab0", {})
api.nvim_set_keymap("n", "<leader>-", "<Plug>AirlineSelectPrevTab", {})
api.nvim_set_keymap("n", "<leader>=", "<Plug>AirlineSelectNextTab", {})

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
