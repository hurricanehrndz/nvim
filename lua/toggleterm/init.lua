-- to save terminals
list_of_terms = {}

function Terminal(nr, ...)
  -- if the terminal with nr exists, set the current buffer to it
  if list_of_terms[nr] then
    -- change to the terminal
    vim.api.nvim_set_current_buf(list_of_terms[nr])
  -- if the terminal doesn't exist
  else
    -- create a buffer that's is unlisted and not a scratch buffer
    local buf = vim.api.nvim_create_buf(false, false)
    -- change to that buffer
    vim.api.nvim_set_current_buf(buf)
    -- create a terinal in the new buffer using my favorite shell
    vim.api.nvim_call_function("termopen", {vim.env.SHELL})
    -- save a reference to that buffer
    list_of_terms[nr] = buf
  end
  -- change to insert mode
  vim.api.nvim_command(":startinsert")
end
