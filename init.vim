set wrap!
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set number
set showmatch
set wildmode=longest,list
set splitbelow
set splitright

" load lua
lua require("plugins")
lua require("plugconf")
"lua require("lualine").setup()

colorscheme alduin

map <C-c> I// <ESC>
map <leader>t :NvimTreeToggle <CR>

