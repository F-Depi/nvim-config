-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim') 

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

--    use({
--        'rose-pine/neovim',
--        as = 'rose-pine',
--        config = function()
--            vim.cmd('colorscheme rose-pine')
--        end
--    })

    -- Nice colors, more then default
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Some advance way of see of the file really is
    use('nvim-treesitter/playground')

    -- Save link of a bunch of files in a box for easy access
    use('theprimeagen/harpoon')

    -- See history of changes in a file, week back
    use('mbbill/undotree')

    -- Git integration with just :G
    use('tpope/vim-fugitive')

    -- LSP, still a vague idea on how to make it work
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',

        requires = {

            {'folke/tokyonight.nvim'},
            {'VonHeikemen/lsp-zero.nvim'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }

    }

    use {
    'cameron-wags/rainbow_csv.nvim',
    config = function()
        require 'rainbow_csv'.setup()
    end,
    -- optional lazy-loading below
    module = {
        'rainbow_csv',
        'rainbow_csv.fns'
    },
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    }
}
    --use('github/copilot.vim')
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)

