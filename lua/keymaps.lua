local api = vim.api
-- set leader key to comma
-- vim.g.mapleader = ","
-- vim.b.mapleader = ","

-- Ctrl+[hjkl] navigate cursor in insert or command mode
api.nvim_set_keymap("i",  "<C-h>",  "<Left>",   {noremap = true})
api.nvim_set_keymap("c",  "<C-h>",  "<Left>",   {noremap = true})
api.nvim_set_keymap("i",  "<C-j>",  "<Down>",   {noremap = true})
api.nvim_set_keymap("c",  "<C-j>",  "<Down>",   {noremap = true})
api.nvim_set_keymap("i",  "<C-k>",  "<Up>",     {noremap = true})
api.nvim_set_keymap("c",  "<C-k>",  "<Up>",     {noremap = true})
api.nvim_set_keymap("i",  "<C-l>",  "<Right>",  {noremap = true})
api.nvim_set_keymap("c",  "<C-l>",  "<Right>",  {noremap = true})

-- save with zz
api.nvim_set_keymap("n",  "zz",         "<cmd>update<cr>",     {noremap = true})
api.nvim_set_keymap("n",  "<space>zz",  "<cmd>SudaWrite<cr>",  {noremap = true})

-- keybind disable hightlights
api.nvim_set_keymap("n", ",l", "<cmd>nohlsearch<cr>", {noremap = true})

-- delete buffer
api.nvim_set_keymap("n",  "<space>bd",  "<cmd>bd!<cr>",  {noremap = true})

-- floatterm
api.nvim_set_keymap("n",  "<F7>",   [[<cmd>FloatermNew<CR>]],                {silent   =   true})
api.nvim_set_keymap("t",  "<F7>",   [[<C-\><C-n><cmd>FloatermNew<CR>]],      {silent   =   true})
api.nvim_set_keymap("n",  "<F6>",   [[<cmd>FloatermPrev<CR>]],               {silent   =   true})
api.nvim_set_keymap("t",  "<F6>",   [[<C-\><C-n><cmd>FloatermPrev<CR>]],     {silent   =   true})
api.nvim_set_keymap("n",  "<F8>",   [[<cmd>FloatermNext<CR>]],               {silent   =   true})
api.nvim_set_keymap("t",  "<F8>",   [[<C-\><C-n><cmd>FloatermNext<CR>]],     {silent   =   true})
api.nvim_set_keymap("n",  "<F12>",  [[<cmd>FloatermToggle<CR>]],             {silent   =   true})
api.nvim_set_keymap("t",  "<F12>",  [[<C-\><C-n><cmd>FloatermToggle<CR>]],   {silent   =   true})

-- tmux navigator
vim.g.tmux_navigator_no_mappings = 1
-- Alt+[hjkl] navigate windows
api.nvim_set_keymap("n", "<A-h>", "<cmd>TmuxNavigateLeft<CR>", {noremap = true})
api.nvim_set_keymap("n", "<A-j>", "<cmd>TmuxNavigateDown<CR>", {noremap = true})
api.nvim_set_keymap("n", "<A-k>", "<cmd>TmuxNavigateUp<CR>", {noremap = true})
api.nvim_set_keymap("n", "<A-l>", "<cmd>TmuxNavigateRight<CR>", {noremap = true})
-- Alt+[hjkl] navigate windows from terminal
api.nvim_set_keymap("t", "<A-h>", "<cmd>TmuxNavigateLeft<CR>", {noremap = true})
api.nvim_set_keymap("t", "<A-j>", "<cmd>TmuxNavigateDown<CR>", {noremap = true})
api.nvim_set_keymap("t", "<A-k>", "<cmd>TmuxNavigateUp<CR>", {noremap = true})
api.nvim_set_keymap("t", "<A-l>", "<cmd>TmuxNavigateRight<CR>", {noremap = true})
-- esc from terminal
api.nvim_set_keymap("t", "<esc>", [[<C-\><C-N><esc>]], {noremap = true})

-- telescope
api.nvim_set_keymap("n", " ff", "<cmd>lua require('telescope.builtin').find_files{}<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " fg", "<cmd>lua require('telescope.builtin').git_files{}<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " rg", "<cmd>lua require('telescope.builtin').live_grep{}<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " fb", "<cmd>lua require('telescope.builtin').buffers{show_all_buffers = true}<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " fz", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({})<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " fh", "<cmd>lua require('telescope.builtin').commands{}<CR>", {noremap = true, silent = true})
--quickfix list <space>ql, location list <space>ls
api.nvim_set_keymap("n", " ql", "<cmd>lua require('telescope.builtin').quickfix{}<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", " ll", "<cmd>lua require('telescope.builtin').loclist{}<CR>", {noremap = true, silent = true})
