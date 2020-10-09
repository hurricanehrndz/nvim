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
api.nvim_set_keymap("n", "<c-p>", ":Files<cr>", {noremap = true})

vim.g.fzf_layout = {
  window = {                                                                                                                                                                           
    height =  0.8,
    width = 0.8,
  }
}
