vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'folke/tokyonight.nvim'
        use 'arcticicestudio/nord-vim'
        use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
        use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
        use 'nvim-treesitter/playground'
        use 'mbbill/undotree'
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
        -- use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
        use 'tpope/vim-fugitive'
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            }
        }
        use 'shatur/neovim-session-manager'
        use {
            "folke/zen-mode.nvim",
            config = function()
                require("zen-mode").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }
        -- use {
        --     'Exafunction/codeium.vim',
        --     config = function()
        --         -- Change '<C-g>' here to any keycode you like.
        --         vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
        --         vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
        --         vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
        --         vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
        --     end
        -- }
        -- use 'github/copilot.vim'
        --      use {
        --          'nvim-tree/nvim-tree.lua',
        --          requires = {
        --              'nvim-tree/nvim-web-devicons', -- optional, for file icons
        --          },
        --      }
        use { 'toppair/peek.nvim', run = 'deno task --quiet build:fast' }
    end)
