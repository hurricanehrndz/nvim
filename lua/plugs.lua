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

-- lsp and completion
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'nvim-lua/completion-nvim'")
vim.cmd("Plug 'nvim-lua/diagnostic-nvim'")

fn["plug#end"]()

-- import plugs settings
require("plugs.theme")
require("plugs.airline")
