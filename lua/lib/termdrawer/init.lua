local terminal = require("lib.termdrawer.terminal")

local M = {}

-- to save terminals
M.list_of_terms = {}

function M.toggle(nr, ...)
  -- if the terminal with nr exists, set the current buffer to it
  if M.list_of_terms[nr] then
    local term = M.list_of_terms[nr]
    term:toggle()
  else
    local term = terminal:new(nr)
    term:toggle()
    M.list_of_terms[nr] = term
  end
end

return M
