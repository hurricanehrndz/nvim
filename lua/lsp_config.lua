local map = require("lib.buf_nmap")
local api = vim.api

-- lsp configuration
local on_attach_vim = function(client)
  print("LSP started.")
  require("completion").on_attach(client)
  require("diagnostic").on_attach(client)
  -- map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  -- map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  -- map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  -- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  -- map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  -- map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  -- map("n", "gk", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  -- map("n", "<space>gw", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
  -- map("n", "<space>gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
  -- map("n", "<space>ah", "<cmd>lua vim.lsp.buf.hover()<CR>")
  -- map("n", "<space>af", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  -- map("n", "<space>ee", "<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>")
  -- map("n", "<space>ar", "<cmd>lua vim.lsp.buf.rename()<CR>")
  -- map("n", "<space>=",  "<cmd>lua vim.lsp.buf.formatting()<CR>")
  -- map("n", "<space>ai", "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
  -- map("n", "<space>ao", "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>")
end

-- enable snippets
api.nvim_set_var("completion_enable_snippet", "UltiSnips")

-- automaitcally change sources when no completion item found
-- api.nvim_set_var("completion_auto_change_source", 1)

-- completion list
api.nvim_set_var(
  "completion_chain_complete_list",
  {
    default = {
      comment = {},
      default = {
        { complete_items = { "lsp", "snippet"} },
        { complete_items = { "buffers"} },
        { complete_items = { "path" } },
        { mode = "<c-p>" },
        { mode = "<c-n>" }
      }
    }
  }
)

-- complete using various sources
-- do I want maps to trigger completion change
--[[
"c-n" : i_CTRL-N
"c-p" : i_CTRL-P
"cmd" : i_CTRL-X_CTRL-V
"defs": i_CTRL-X_CTRL-D
"dict": i_CTRL-X_CTRL-K
"file": i_CTRL-X_CTRL-F
"incl": i_CTRL-X_CTRL-I
"keyn": i_CTRL-X_CTRL-N
"keyp": i_CTRL-X_CTRL-P
"line": i_CTRL-X_CTRL-L
"spel": i_CTRL-X_s
"tags": i_CTRL-X_CTRL-]
"thes": i_CTRL-X_CTRL-T
"user": i_CTRL-X_CTRL-U
]]--

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
