local api = vim.api

-- <space>ff find files
api.nvim_set_keymap("n", " ff", "<cmd>lua require'telescope.builtin'.find_files{}<CR>", {noremap = true, silent = true})
-- <space>fg fuzzy find over git files
api.nvim_set_keymap("n", " fg", "<cmd>lua require'telescope.builtin'.git_files{}<CR>", {noremap = true, silent = true})

-- <space>rg grep files as you type
api.nvim_set_keymap("n", " rg", "<cmd>lua require'telescope.builtin'.live_grep{}<CR>", {noremap = true, silent = true})

-- <space>bl list buffer
api.nvim_set_keymap("n", " bl", "<cmd>lua require'telescope.builtin'.buffers{show_all_buffers = true}<CR>", {noremap = true, silent = true})

-- current buffer fuzzy finder
api.nvim_set_keymap("n", " fz", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_finder{}<CR>", {noremap = true, silent = true})

-- command history <space>ch
api.nvim_set_keymap("n", " ch", "<cmd>lua require'telescope.builtin'.commands{}<CR>", {noremap = true, silent = true})

--quickfix list <space>ql, location list <space>ls
api.nvim_set_keymap("n", " ql", "<cmd>lua require'telescope.builtin'.quickfix{}<CR>", {noremap = true, silent = true})
--quicklist <space>ql
api.nvim_set_keymap("n", " ll", "<cmd>lua require'telescope.builtin'.loclist{}<CR>", {noremap = true, silent = true})
