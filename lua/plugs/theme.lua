local fn = vim.fn

if fn['has']('termguicolors') then
  vim.o.termguicolors = true
end

vim.o.background = 'dark'
vim.cmd('syntax on')
vim.cmd('colorscheme OceanicNext')
