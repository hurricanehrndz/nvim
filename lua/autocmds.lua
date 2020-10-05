local create_augroups = require("lib.augroups")

local autocmds = {
  open_terminal = {
    {"TermOpen",    "*",   [[setlocal norelativenumber | setlocal nonumber]]},
    {"TermOpen",    "*",   [[tnoremap <buffer> <Esc> <C-\><C-n>]]}
  },
  js_ls = {
    {"FileType",    "javascript", [[setlocal omnifunc=v:lua.vim.lsp.omnifunc]]}
  }
}

-- create augroups
create_augroups(autocmds)
