local api = vim.api
-- airline theme
api.nvim_set_var("airline_theme", "onedark")
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

-- Airline keybinds
api.nvim_set_keymap("n", "<leader>1", "<Plug>AirlineSelectTab1", {})
api.nvim_set_keymap("n", "<leader>2", "<Plug>AirlineSelectTab2", {})
api.nvim_set_keymap("n", "<leader>3", "<Plug>AirlineSelectTab3", {})
api.nvim_set_keymap("n", "<leader>4", "<Plug>AirlineSelectTab4", {})
api.nvim_set_keymap("n", "<leader>5", "<Plug>AirlineSelectTab5", {})
api.nvim_set_keymap("n", "<leader>6", "<Plug>AirlineSelectTab6", {})
api.nvim_set_keymap("n", "<leader>7", "<Plug>AirlineSelectTab7", {})
api.nvim_set_keymap("n", "<leader>8", "<Plug>AirlineSelectTab8", {})
api.nvim_set_keymap("n", "<leader>9", "<Plug>AirlineSelectTab9", {})
api.nvim_set_keymap("n", "<leader>0", "<Plug>AirlineSelectTab0", {})
api.nvim_set_keymap("n", "<leader>-", "<Plug>AirlineSelectPrevTab", {})
api.nvim_set_keymap("n", "<leader>=", "<Plug>AirlineSelectNextTab", {})
