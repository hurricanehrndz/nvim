local map = require("lib.buf_nmap")
local api = vim.api

-- lsp configuration
local on_attach_vim = function(client)
  print("LSP started.")
  require("completion").on_attach(client)
  require("diagnostic").on_attach(client)
  map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  map("n", "gk", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  map("n", "<space>gw", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
  map("n", "<space>gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
  map("n", "<space>ah", "<cmd>lua vim.lsp.buf.hover()<CR>")
  map("n", "<space>af", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  map("n", "<space>ee", "<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>")
  map("n", "<space>ar", "<cmd>lua vim.lsp.buf.rename()<CR>")
  map("n", "<space>=",  "<cmd>lua vim.lsp.buf.formatting()<CR>")
  map("n", "<space>ai", "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
  map("n", "<space>ao", "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>")
end

-- configure tsserver
require("nvim_lsp").tsserver.setup{on_attach=on_attach_vim}
-- python language server
require("nvim_lsp").pyls.setup{on_attach=on_attach_vim}
-- bash language server
require("nvim_lsp").bashls.setup{on_attach=on_attach_vim}
-- lua language server
require("nvim_lsp").sumneko_lua.setup{
  on_attach=on_attach_vim,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
      diagnostics = { enable = true, globals = { "vim" },
      }
    }
  }
}

-- completion settings
vim.o.completeopt = "menuone,noinsert,noselect"
-- disable insert completion menu messages
vim.o.shortmess = vim.o.shortmess .. "c"
-- completion matching strategy
api.nvim_set_var("completion_matching_strategy_list", {"exact", "substring", "fuzzy"})
-- completion enable diagnostics vritual text
api.nvim_set_var("diagnostic_enable_virtual_text", 1)
-- increase the space before diagnostic virtual text
api.nvim_set_var("space_before_virtual_text", 5)
