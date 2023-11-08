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
set scrolloff =6

" load lua
lua require("plugins")
lua require("config")

colorscheme alduin

