-- allow switching to two or four space tabs on the fly
vim.keymap.set("n", "<leader>2", ":set tabstop =2<cr>:set softtabstop =2<cr>:set shiftwidth =2<cr>", {})
vim.keymap.set("n", "<leader>4", ":set tabstop =4<cr>:set softtabstop =4<cr>:set shiftwidth =4<cr>", {})

-- easier navigation to beginning and end of rows
vim.keymap.set('n', '<leader>l', '$', {})
vim.keymap.set('n', '<leader>h', '^', {})
vim.keymap.set('v', '<leader>l', '$', {})
vim.keymap.set('v', '<leader>h', '^', {})

-- clear search selection 
vim.keymap.set('n', '<leader><Tab>', ':let @/=""<cr>', {})

-- enable and disable lsp
vim.keymap.set('n', '<leader>nld', ":LspStop<cr>", {})
vim.keymap.set('n', '<leader>nle', ":LspStart<cr>", {})
