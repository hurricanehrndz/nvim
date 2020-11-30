local api = vim.api

local completion = require('completion')
local lspconfig = require('lspconfig')
local lsp_status = require('lsp-status')


local mapper = function(mode, key, result)
  api.nvim_buf_set_keymap(0, mode, key, result, {noremap = true, silent = true})
end

-- lsp configuration
local custom_lsp_attach = function(client)
  print("LSP started.")
  completion.on_attach(client)

  -- diagnostic mappings
  mapper(
    'n',
    '<space>dn',
    '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>'
  )
  mapper(
    'n',
    '<space>dp',
    '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>'
  )

  -- mimic help mapping
  mapper('n',  '<c-]>',      '<cmd>lua vim.lsp.buf.definition()<CR>')
  -- tj mappings
  mapper("n",  "gD",         "<cmd>lua vim.lsp.buf.declaration()<CR>")
  mapper("n",  "<space>ca",  "<cmd>lua vim.lsp.buf.code_action()<CR>")
  mapper("n",  "<space>cr",  "<cmd>lua vim.lsp.buf.rename()<CR>")

  -- imported mappings from other lsps
  mapper("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  mapper("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  mapper("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")

  -- if buffer is not lua
  if vim.api.nvim_buf_get_option(0, 'filetype') ~= 'lua' then
    mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  end

  mapper(
    'n',
    '<space>sl',
    '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>'
  )
  mapper(
    'n',
    '<space>gd',
    '<cmd>lua vim.lsp.buf.definition { callbacks = { Location.jump_first, Location.highlight.with { timeout = 300 } } }<CR>'
  )
  mapper(
    'n',
    '<space>pd',
    '<cmd>lua vim.lsp.buf.definition { callbacks = Location.preview.with { lines_below = 5 } }<CR>'
  )

  -- Rust is currently the only thing w/ inlay hints
  if vim.api.nvim_buf_get_option(0, 'filetype') == 'rust' then
    vim.cmd([[autocmd BufEnter,BufWritePost <buffer> :lua require('lsp_extensions.inlay_hints').request { aligned = true, prefix = " » " }]])
  end

  -- mapper('i', '<c-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')

  vim.cmd("setlocal omnifunc=v:lua.vim.lsp.omnifunc")
end

-- lua language server
require('nlua.lsp.nvim').setup(lspconfig, {
  on_attach = custom_lsp_attach,

  globals = {
    -- Colorbuddy
    "Color", "c", "Group", "g", "s",
  }
})

-- configure tsserver
lspconfig.tsserver.setup({
    on_attach = custom_lsp_attach
})

-- python language server
lspconfig.pyls.setup({
  -- settings = {
  --   plys = {
  --     plugins = {
  --       pyls_mypy = {
  --         enabled = true
  --         live_mode = false
  --       }
  --     }
  --   }
  -- },
  on_attach=custom_lsp_attach
})

-- viml language server
lspconfig.vimls.setup({
  on_attach = custom_lsp_attach,
})

-- yaml language server
lspconfig.yamlls.setup({
  -- log_level = vim.lsp.protocol.MessageType.Log;
  -- message_level = vim.lsp.protocol.MessageType.Log;
  settings = {
    yaml = {
      trace = {
        ['server'] = 'verbose'
      },
      schemas = {
        ['http://json.schemastore.org/github-workflow'] = [[.github/workflows/{*.y?(a)ml]],
        ['https://json.schemastore.org/ansible-role-2.9'] = {
          [[roles/**/tasks/y?(a)ml]],
          [[roles/**/meta/y?(a)ml]],
          [[roles/**/handlers/y?(a)ml]],
          [[roles/**/vars/y?(a)ml]],
        },
      },
    },
  },
  on_attach = custom_lsp_attach
})

-- haskell language server
lspconfig.hls.setup({
  cmd = { "haskell-language-server-wrapper", "--lsp" },
  filetypes = { "haskell", "lhaskell" },
  on_attach = custom_lsp_attach,
})

-- bash language server
lspconfig.bashls.setup({
  on_attach = custom_lsp_attach,
})

-- clangd language server
lspconfig.clangd.setup({
  cmd = {"clangd", "--background-index"},
  handlers = lsp_status.extensions.clangd.setup(),
  on_attach = custom_lsp_attach,
})

-- enable diagnostics
-- see: https://github.com/nvim-lua/diagnostic-nvim/issues/73
-- see: ":help lsp-handler"
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
     -- Enable virtual text, override spacing to 5
     virtual_text = {
       spacing = 5,
     },
    --  see: ":help vim.lsp.diagnostic.set_signs()"
    signs = {
      priority = 20
    },
    update_in_insert = false,
  }
)

-- enable lsp on all buffers
-- local create_augroups = require("lib.augroups")
-- local lsp_autocmds = {
--   -- turn on complete-nvim
--   complete_all_files = {
--     {"BufEnter", "*", [[lua require("completion").on_attach()]]},
--   },
-- }
-- create_augroups(lsp_autocmds)

-- completion settings
vim.o.completeopt = "menuone,noinsert,noselect"
-- disable insert completion menu messages
vim.o.shortmess = vim.o.shortmess .. "c"
-- completion matching strategy
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}
-- Decide on length
vim.g.completion_trigger_keyword_length = 2
-- enable snippets
vim.g.completion_enable_snippet = 'UltiSnips'
-- completion list
-- api.nvim_set_var(
--   "completion_chain_complete_list",
--   {
--     default = {
--       comment = {},
--       default = {
--         { complete_items = { "lsp", "snippet"} },
--         { complete_items = { "buffers"} },
--         { complete_items = { "path" } },
--         { mode = "<c-p>" },
--         { mode = "<c-n>" }
--       }
--     }
--   }
-- )
