vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'rafi/awesome-vim-colorschemes'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'xiyaowong/nvim-transparent'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
         "windwp/nvim-autopairs",
         config = function() require("nvim-autopairs").setup {
             disable_filetypes = { "TelescopePrompt", "vim", "clojure" }
         } end
     }

    use 'lewis6991/gitsigns.nvim'
    use({
        "gbprod/substitute.nvim",
        config = function()
            require("substitute").setup({
            })
        end
    })
    use 'karb94/neoscroll.nvim'
    use 'nvim-lua/plenary.nvim' 
    use 'ThePrimeagen/harpoon'
    use 'nanotech/jellybeans.vim'
    use 'scottymoon/vim-twilight'
    use 'vim-scripts/buttercream.vim'
    use 'vim-scripts/wood.vim'
    use 'vim-scripts/synic.vim'
    use 'DryLabRebel/Squire'
    use 'mikesmithgh/gruvsquirrel.nvim'
    use 'chriskempson/base16-vim'
    use 'Olical/conjure'
    use 'tpope/vim-dispatch'
    use 'clojure-vim/vim-jack-in'
    use 'radenling/vim-dispatch-neovim'   
    use 'gleam-lang/gleam.vim'
    use 'robertmeta/nofrils'
    use 'plan9-for-vimspace/acme-colors'
end)
