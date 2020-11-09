local fn = vim.fn

local vim_plug_path = fn.stdpath('data') .. '/site/autoload/plug.vim'
local vim_plug_src =
  'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
local vim_plug_install_cmd =
  'curl --create-dirs -fLo ' .. vim_plug_path .. ' ' .. vim_plug_src

local plug_exists = fn.systemlist('find ' .. vim_plug_path .. ' 2>/dev/null')
if (#plug_exists == 0) then
  vim.cmd('silent ! ' .. vim_plug_install_cmd)
end
