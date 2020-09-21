local fn = vim.fn

fn['plug#begin'](fn.stdpath('data') .. '/plugged')

-- completion
vim.cmd("Plug 'nvim-lua/completion-nvim'")
-- theme
vim.cmd("Plug 'mhartington/oceanic-next'")

fn['plug#end']()

-- import plugs settings
require('plugs.theme')
