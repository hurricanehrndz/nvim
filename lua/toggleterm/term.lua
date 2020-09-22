api = vim.api
fn = vim.fn

Terminal = {}
Terminal.__index = Terminal
Terminal.win_height =  vim.g.lua_toggleterm_height or 15
Terminal.started = false

function Terminal:new(nr)
  local term = {}
  setmetatable(term, Terminal)
  term.buf_name = "ToggleTerm" .. nr
  term.number = nr
  return term
end

function Terminal.winnr(buf_name_pattern)
  for _, i in ipairs(api.nvim_list_wins()) do
    if api.nvim_buf_get_name(api.nvim_win_get_buf(i)):match(buf_name_pattern) then
      return i
    end
  end
end

function Terminal.get_bufnr_by_pattern(name_pattern)
  for _, i in ipairs(api.nvim_list_bufs()) do
    if api.nvim_buf_get_name(i):match(name_pattern) then
      return i
    end
  end
  return nil
end

function Terminal:exists()
  return self.get_bufnr_by_pattern(self.buf_name)
end

function Terminal:is_loaded()
  local bufnr = self.get_bufnr_by_pattern(self.buf_name)
  return api.nvim_buf_is_loaded(bufnr)
end

function Terminal:create()
  vim.cmd("botright new +resize" .. self.win_height)
  fn["termopen"](vim.env.SHELL)
  api.nvim_buf_set_name(0, self.buf_name)
end

function Terminal:reload()
  vim.cmd("silent! botright sbuffer +resize" ..
    self.win_height .. " " .. self.buf_name)
end

function Terminal:load()
  if not self:exists() then
    self:create()
  else
    self:reload()
  end
end

function Terminal:close()
  local winnr = self.winnr(self.buf_name)
  api.nvim_win_close(winnr, false)
end

function Terminal:toggle()
  if self:is_loaded() then
    self:close()
  else
    self:load()
  end
end
