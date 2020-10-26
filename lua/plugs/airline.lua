local api = vim.api
-- airline theme
api.nvim_set_var("airline_theme", "onedark")
-- Enable powerline fonts
api.nvim_set_var("airline_powerline_fonts", 1)
-- show buffers
api.nvim_set_var("airline#extensions#tabline#show_buffers", 1)
-- disable showing tabs
api.nvim_set_var("airline#extensions#tabline#show_tabs", 0)
-- show tab counts
api.nvim_set_var("airline#extensions#tabline#show_tab_count", 1)
-- Do not show close symbol
api.nvim_set_var("airline#extensions#tabline#show_close_button", 0)
-- enable keybinds for bufffer jumps
api.nvim_set_var("airline#extensions#tabline#buffer_idx_mode", 1)
-- set format for buffer indexes
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
api.nvim_set_keymap("n", " 1", "<Plug>AirlineSelectTab1", {})
api.nvim_set_keymap("n", " 2", "<Plug>AirlineSelectTab2", {})
api.nvim_set_keymap("n", " 3", "<Plug>AirlineSelectTab3", {})
api.nvim_set_keymap("n", " 4", "<Plug>AirlineSelectTab4", {})
api.nvim_set_keymap("n", " 5", "<Plug>AirlineSelectTab5", {})
api.nvim_set_keymap("n", " 6", "<Plug>AirlineSelectTab6", {})
api.nvim_set_keymap("n", " 7", "<Plug>AirlineSelectTab7", {})
api.nvim_set_keymap("n", " 8", "<Plug>AirlineSelectTab8", {})
api.nvim_set_keymap("n", " 9", "<Plug>AirlineSelectTab9", {})
api.nvim_set_keymap("n", " 0", "<Plug>AirlineSelectTab0", {})
api.nvim_set_keymap("n", " mh", "<Plug>AirlineSelectPrevTab", {})
api.nvim_set_keymap("n", " ml", "<Plug>AirlineSelectNextTab", {})
-- show full path in section C of statusline
api.nvim_set_var("airline_section_c",'%F%m%r%h%w%')

-- Enable tabline
api.nvim_set_var("airline#extensions#tabline#enabled", 1)
-- Enable bufferline in section C of airline#statusline
api.nvim_set_var("airline#extensions#bufferline#enabled", 1)
