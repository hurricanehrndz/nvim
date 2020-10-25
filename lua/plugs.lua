local fn = vim.fn

fn["plug#begin"](fn.stdpath('data') .. "/plugged")

-- completion
vim.cmd("Plug 'nvim-lua/completion-nvim'")

-- theme and look
vim.cmd("Plug 'joshdick/onedark.vim'")
vim.cmd("Plug 'vim-airline/vim-airline'")
vim.cmd("Plug 'vim-airline/vim-airline-themes'")
vim.cmd("Plug 'vim-airline/vim-airline-themes'")
vim.cmd("Plug 'ryanoasis/vim-devicons'")

-- lsp and completion
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'nvim-lua/completion-nvim'")
vim.cmd("Plug 'nvim-lua/diagnostic-nvim'")
vim.cmd("Plug 'steelsojka/completion-buffers'")

-- telescope w/ fzf command
vim.cmd("Plug 'junegunn/fzf', {'dir': '~/.local/share/fzf', 'do': { -> fzf#install() }}")
vim.cmd("Plug 'junegunn/fzf.vim'")
vim.cmd("Plug 'nvim-lua/popup.nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-lua/telescope.nvim'")

-- Language Syntax Support
vim.cmd("Plug 'sheerun/vim-polyglot'")
vim.cmd("Plug 'prettier/vim-prettier', { 'do': 'yarn install' }")
vim.cmd("Plug 'ntpeters/vim-better-whitespace'")

-- Tools
vim.cmd("Plug 'tpope/vim-fugitive'")
vim.cmd("Plug 'tpope/vim-surround'")
vim.cmd("Plug 'tpope/vim-commentary'")
vim.cmd("Plug 'mhinz/vim-startify'")
vim.cmd("Plug 'airblade/vim-gitgutter'")
vim.cmd("Plug 'lambdalisue/suda.vim'")
vim.cmd("Plug 'mattn/emmet-vim'")

fn["plug#end"]()

-- import plugs settings
require("plugs.theme")
require("plugs.airline")
require("plugs.fzf")
require("plugs.prettier")
require("plugs.emmet")
