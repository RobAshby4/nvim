-- vim opts
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.ignorecase = true
vim.wo.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

-- allow switching to two or four space tabs on the fly
vim.keymap.set("n", "<leader>2", ":set tabstop =2<cr>:set softtabstop =2<cr>:set shiftwidth =2<cr>", {})
vim.keymap.set("n", "<leader>4", ":set tabstop =4<cr>:set softtabstop =4<cr>:set shiftwidth =4<cr>", {})

-- enable spellcheck
vim.keymap.set("n", "<leader>se", ":setlocal spell spelllang=en_us<cr>", {})
vim.keymap.set("n", "<leader>sd", ":set nospell<cr>", {})

-- cocnvim config
local keyset = vim.keymap.set
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<Tab>\<c-r>=coc#on_enter()\<CR>"]], opts)
keyset("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)

-- Use <c-space> to trigger completion
keyset("i", "<C-space>", "coc#refresh()", {silent = true, expr = true})
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
-- Coc explorer
keyset("n", "<leader>t", "<Cmd>CocCommand explorer<CR>", {silent = true})
-- end cocnvim config


require('lualine').setup {
    options = {
	icons_enabled = true,
	theme = auto
    }
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "cpp", "python", "lua", "vim"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
  --  indent = {
  --    enable = false
  --  }
}


require('gitsigns').setup()

require('neoscroll').setup()
require("harpoon").setup()

-- navigation keybinds
vim.keymap.set('n', '<leader>l', '$', {})
vim.keymap.set('n', '<leader>h', '^', {})
vim.keymap.set('v', '<leader>l', '$', {})
vim.keymap.set('v', '<leader>h', '^', {})

-- search highlight clear keybinds
vim.keymap.set('n', '<leader><Tab>', ':let @/=""<cr>', {})

-- coc disable/enable keymap
vim.keymap.set('n', '<leader>cd', ":CocDisable<cr>", {})
vim.keymap.set('n', '<leader>ce', ":CocEnable<cr>", {})

-- telescope keymaps
local telebuiltin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telebuiltin.find_files, {})
vim.keymap.set('n', '<leader>g', telebuiltin.live_grep, {})
vim.keymap.set('n', '<leader>man', telebuiltin.man_pages, {})

-- substitute keymaps
local sub = require('substitute')
vim.keymap.set('n', 's', sub.operator, { noremap = true })
vim.keymap.set('n', 'ss', sub.line, { noremap = true })
vim.keymap.set('n', 'S', sub.eol, { noremap = true })
vim.keymap.set('x', 's', sub.visual, { noremap = true })

-- harpoon keymaps 
vim.keymap.set('n', '<leader>a', require("harpoon.mark").add_file, {})
vim.keymap.set('n', '<leader>n', require("harpoon.ui").nav_next, {})
vim.keymap.set('n', '<leader>p', require("harpoon.ui").nav_prev, {})
vim.keymap.set('n', '<leader>H', require("harpoon.ui").toggle_quick_menu, {})
vim.keymap.set('n', '<leader>$', require("harpoon.term").gotoTerminal, {})

