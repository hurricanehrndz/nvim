-- module to ease creation of buf maps
api = vim.api

return function(mode, lhs, rhs)
  api.nvim_buf_set_keymap(0, mode, lhs, rhs, {noremap = true, silent = true})
end
