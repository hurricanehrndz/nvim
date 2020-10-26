-- settings for fzf plugin
local api = vim.api
local create_augroups = require("lib.augroups")

local autocmds = {
  ft_fzf = {
    {"FileType",    "fzf", [[tunmap <buffer> <Esc>]]},
    {"FileType",    "fzf", [[tnoremap <buffer> <silent> <C-c> <C-c> :q<cr>]]}
  }
}

-- create augroups
create_augroups(autocmds)

-- create key mappings
-- <space>fh fuzzy find helptags
api.nvim_set_keymap("n", " fh", [[<cmd>Helptags<CR>]], {noremap = true, silent = true})
-- <space>fm fuzzy find nmaps
api.nvim_set_keymap("n", " fm", [[<cmd>Maps<CR>]], {noremap = true, silent = true})

vim.g.fzf_layout = {
  window = {
    height =  0.8,
    width = 0.8,
  }
}
