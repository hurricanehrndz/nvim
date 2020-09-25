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
