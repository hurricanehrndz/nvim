api = vim.api

Terminal = {}
Terminal.__index = Terminal
Terminal.win_height =  vim.g.lua_toggleterm_height or 15

function Terminal:new(nr)
  local term = {}
  setmetatable(term,Terminal)
  term.buf_name = "ToggleTerm" .. nr
  term.number = nr
end

function Terminal:winnr()
  for _, i in ipairs(api.nvim_list_wins()) do
    if api.nvim_buf_get_name(
        api.nvim_win_get_buf(i)):match('.*/' .. Terminal.buf_name .. '$'
      ) then
      return i
    end
  end
end
