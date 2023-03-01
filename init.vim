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
lua require("lualine").setup()

colorscheme alduin

map <C-c> I// <ESC>
map <leader>t :NvimTreeToggle <CR>

" remap tab for trigger in coc
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

