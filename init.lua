-- usr/plugin configs
require("config.lazy")
require("config.keybinds")

-- lsp configs
require("config.lsp_config")
require("config.lsp.clangd")
require("config.lsp.luals")
require("config.lsp.rust_analyzer")
require("config.lsp.ts_ls")

-- nvim settings 
vim.opt.number = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.cmd [[colorscheme gruvsquirrel]]
