local api = vim.api
-- enable tabline
api.nvim_set_var("airline#extensions#tabline#enabled", 1)
-- enable powerline fonts
api.nvim_set_var("airline_powerline_fonts", 1)
-- buffer index format and mode
api.nvim_set_var("airline#extensions#tabline#buffer_idx_mode", 1)
local buffer_idx_format = {
  ["0"] = "➓ ",
  ["1"] = "➊ ",
  ["2"] = "➋ ",
  ["3"] = "➌ ",
  ["4"] = "➍ ",
  ["5"] = "➎ ",
  ["6"] = "➏ ",
  ["7"] = "➐ ",
  ["8"] = "➑ ",
  ["9"] = "➒ " }
api.nvim_set_var("airline#extensions#tabline#buffer_idx_format", buffer_idx_format)
