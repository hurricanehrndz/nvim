local fn = vim.fn

local plugged_path = fn.stdpath('data') .. "/plugged"
fn["plug#begin"](plugged_path)
-- completion
vim.cmd("Plug 'nvim-lua/completion-nvim'")

-- theme and look
vim.cmd("Plug 'ayu-theme/ayu-vim'")
vim.cmd("Plug 'joshdick/onedark.vim'")
vim.cmd("Plug 'ryanoasis/vim-devicons'")

-- lsp and completion
-- Plugs: https://github.com/nvim-lua/completion-nvim
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'nvim-lua/completion-nvim'")
vim.cmd("Plug 'nvim-lua/diagnostic-nvim'")
vim.cmd("Plug 'steelsojka/completion-buffers'")
vim.cmd("Plug 'SirVer/ultisnips'")

-- telescope w/ fzf command
vim.cmd("Plug 'junegunn/fzf', {'do': { -> fzf#install() }}")
vim.cmd("Plug 'junegunn/fzf.vim'")
vim.cmd("Plug 'nvim-lua/popup.nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-lua/telescope.nvim'")
vim.cmd("Plug 'voldikss/vim-floaterm'")

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
vim.cmd("Plug 'godlygeek/tabular'")
vim.cmd("Plug 'rafcamlet/nvim-luapad'")

-- must have/whynots?
vim.cmd("Plug 'norcalli/nvim-colorizer.lua'")
fn["plug#end"]()

local plugged_exists = fn.systemlist('find ' .. plugged_path .. ' 2>/dev/null')
if (#plugged_exists == 0) then
  vim.cmd("PlugInstall")
end

-- import plugs settings
require("plugs.theme")
require("plugs.fzf")
require("plugs.prettier")
require("plugs.emmet")
require("plugs.telescope")

-- turn on plugs
require("colorizer").setup()
