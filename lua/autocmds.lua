local create_augroups = require("lib.augroups")

local autocmds = {
  open_terminal = {
    {"TermOpen",    "*",   [[setlocal norelativenumber | setlocal nonumber]]},
    {"TermOpen",    "*",   [[tnoremap <buffer> <Esc> <C-\><C-n>]]}
  },
  help_files = {
    {"Filetype", "help", [[noremap <buffer> <silent> <C-c> :q<cr>]]},
    {"Filetype", "help", [[noremap <buffer> <silent> q :q<cr>]]}
  }
}

-- create augroups
create_augroups(autocmds)
