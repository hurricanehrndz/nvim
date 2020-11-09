local api = vim.api
-- set leader key to comma
vim.g.mapleader = ","
vim.b.mapleader = ","

-- use jk for escape
api.nvim_set_keymap("i", "jk", "<ESC>", {noremap = true})

-- Ctrl+[hjkl] navigate cursor in insert or command mode
api.nvim_set_keymap("i",  "<C-h>",  "<Left>",   {noremap = true})
api.nvim_set_keymap("c",  "<C-h>",  "<Left>",   {noremap = true})
api.nvim_set_keymap("i",  "<C-j>",  "<Down>",   {noremap = true})
api.nvim_set_keymap("c",  "<C-j>",  "<Down>",   {noremap = true})
api.nvim_set_keymap("i",  "<C-k>",  "<Up>",     {noremap = true})
api.nvim_set_keymap("c",  "<C-k>",  "<Up>",     {noremap = true})
api.nvim_set_keymap("i",  "<C-l>",  "<Right>",  {noremap = true})
api.nvim_set_keymap("c",  "<C-l>",  "<Right>",  {noremap = true})

-- Delete comment in insert mode
api.nvim_set_keymap("i",  "<C-e>",  [[<CR><C-o>0<C-o>de]],  {noremap = true})

-- save with zz
api.nvim_set_keymap("n",  "zz",         "<cmd>update<cr>",     {noremap = true})
api.nvim_set_keymap("n",  "<space>zz",  "<cmd>SudaWrite<cr>",  {noremap = true})

-- keybind disable hightlights
api.nvim_set_keymap("n", "<leader>l", "<cmd>nohlsearch<cr>", {noremap = true})

-- delete buffer
api.nvim_set_keymap("n",  "<space>bd",  "<cmd>bd!<cr>",  {noremap = true})

-- move buffer forward and back
api.nvim_set_keymap("n", "<space>j", "<cmd>bn<cr>", {noremap = true})
api.nvim_set_keymap("n", "<space>k", "<cmd>bp<cr>", {noremap = true})

-- lsp sources maps
api.nvim_set_keymap("i",  "<A-h>",  "<Plug>(completion_next_source)",  {noremap = true})
api.nvim_set_keymap("i",  "<A-l>",  "<Plug>(completion_prev_source)",  {noremap = true})

-- floatterm
api.nvim_set_keymap("n",  "<F7>",   [[<cmd>FloatermNew<CR>]],                {silent   =   true})
api.nvim_set_keymap("t",  "<F7>",   [[<C-\><C-n><cmd>FloatermNew<CR>]],      {silent   =   true})
api.nvim_set_keymap("n",  "<F6>",   [[<cmd>FloatermPrev<CR>]],               {silent   =   true})
api.nvim_set_keymap("t",  "<F6>",   [[<C-\><C-n><cmd>FloatermPrev<CR>]],     {silent   =   true})
api.nvim_set_keymap("n",  "<F8>",   [[<cmd>FloatermNext<CR>]],               {silent   =   true})
api.nvim_set_keymap("t",  "<F8>",   [[<C-\><C-n><cmd>FloatermNext<CR>]],     {silent   =   true})
api.nvim_set_keymap("n",  "<F12>",  [[<cmd>FloatermToggle<CR>]],             {silent   =   true})
api.nvim_set_keymap("t",  "<F12>",  [[<C-\><C-n><cmd>FloatermToggle<CR>]],   {silent   =   true})
