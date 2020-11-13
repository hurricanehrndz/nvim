local bo = require("lib.bufopt")

-->> window-scoped options <<--
-- show line numbers
vim.wo.number = true
-- show relative numbers
vim.wo.relativenumber = true
-- always have sign column
vim.wo.signcolumn = "yes"
-- disable line wrap
vim.wo.wrap = false
-- enable color column
vim.wo.colorcolumn = "80"

-->> edior options <<--
-- abandon buffer when unloading
vim.o.hidden = true
-- refresh rate of diagnostic msg
vim.o.updatetime = 300
-- split new window below current
vim.o.splitbelow = true
-- split new window right of current
vim.o.splitright = true
-- case insensitive search
vim.o.ignorecase = true
-- highlight searches
vim.o.hlsearch = true
-- copy-paste with system clipboard
vim.o.clipboard = "unnamedplus"
-- some language servers dont like backup files
vim.o.backup = false
vim.o.writebackup = false
-- scrolling "bounding"
vim.o.scrolloff = 5
vim.o.sidescrolloff = 10
-- strings to use in list command for punctuation
vim.o.listchars = [[tab:→ ,eol:↲,space:␣,trail:•,extends:⟩,precedes:⟨]]
-- set max with of text
vim.o.textwidth = 78
-- set selection to exclusive
vim.o.selection = "exclusive"
vim.o.smartcase = true
-- enable undofile
vim.o.undofile = true

-->> buffer-scoped options <<--
bo.shiftwidth = 4
bo.expandtab = true
bo.smartindent = true
