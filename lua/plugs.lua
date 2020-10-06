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

-- fzf
vim.cmd("Plug 'junegunn/fzf', {'dir': '~/.local/share/fzf', 'do': { -> fzf#install() }}")
vim.cmd("Plug 'junegunn/fzf.vim'")

-- Language Syntax Support
vim.cmd("Plug 'sheerun/vim-polyglot'")

fn["plug#end"]()

-- import plugs settings
require("plugs.theme")
require("plugs.airline")
require("plugs.fzf")
