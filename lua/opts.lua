local bo = require("lib.bufopt")

-->> window-scoped options <<--
-- show line numbers
vim.wo.number = true
-- always have sign column
vim.wo.signcolumn = "yes"
-- disable line wrap
vim.wo.wrap = false

-->> edior options <<--
-- better display for messages
vim.o.cmdheight = 2
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
-- completion
vim.o.completeopt = "menuone,noinsert,noselect"


-->> buffer-scoped options <<--
bo.shiftwidth = 2
bo.expandtab = true
