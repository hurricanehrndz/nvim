local api = vim.api

-- print spaces between brackets
api.nvim_set_var("prettier#config#bracket_spacing", "true")

-- disables autosave feature
api.nvim_set_var("prettier#autoformat", 0)

local create_augroups = require("lib.augroups")

local autocmds = {
  prettier_bufw = {
    {"BufWritePre", "*.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue", "PrettierAsync"}
  }
}

-- create augroups
create_augroups(autocmds)
