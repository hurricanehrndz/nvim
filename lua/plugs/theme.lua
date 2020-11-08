local fn = vim.fn
local api = vim.api

if fn['has']('termguicolors') then
  vim.o.termguicolors = true
end

api.nvim_set_var("ayucolor", "mirage")

vim.o.background = 'dark'
vim.cmd("syntax on")
vim.cmd("colorscheme ayu")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
