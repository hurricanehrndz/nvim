local fn = vim.fn

fn["plug#begin"](fn.stdpath('data') .. "/plugged")

-- completion
vim.cmd("Plug 'nvim-lua/completion-nvim'")

-- theme and look
vim.cmd("Plug 'mhartington/oceanic-next'")
vim.cmd("Plug 'vim-airline/vim-airline'")
vim.cmd("Plug 'vim-airline/vim-airline-themes'")
vim.cmd("Plug 'vim-airline/vim-airline-themes'")
vim.cmd("Plug 'ryanoasis/vim-devicons'")

-- lsp
vim.cmd("Plug 'neovim/nvim-lspconfig'")

fn["plug#end"]()

-- import plugs settings
require("plugs.theme")
require("plugs.airline")
