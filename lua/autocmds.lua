local create_augroups = require("lib.augroups")

local autocmds = {
  open_terminal = {
    {"TermOpen",    "*",   [[setlocal norelativenumber | setlocal nonumber]]},
    {"TermOpen",    "*",   [[tnoremap <buffer> <Esc> <C-\><C-n>]]}
  }
}

-- create augroups
create_augroups(autocmds)
