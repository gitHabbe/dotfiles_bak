return {
        { -- File finder/navigator
                'nvim-telescope/telescope.nvim',
                dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { -- Smarter syntax highligher
                'nvim-treesitter/nvim-treesitter',
                build = ':TSUpdate',
        },
        { -- Smarter commenting. Default bind gcc
                "numToStr/Comment.nvim",
                config = function()
                        require("Comment").setup()
                end

        },
        { -- Theme: One Dark
                "navarasu/onedark.nvim",
                priority = 1000,
                config = function()
                        vim.cmd("colorscheme onedark")
                        require("onedark").setup({ style = 'deep' })
                        require("onedark").load()
                end
        },

        "tpope/vim-surround",        -- Bracket management

        "psliwka/vim-smoothie",      -- Smooth scroll

        "easymotion/vim-easymotion", -- Cursor jump navigation

        "williamboman/mason.nvim",   -- Install & manage LSP
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",

        "windwp/nvim-autopairs",     -- Autp close brackets

        "Exafunction/codeium.vim",

        "ggandor/leap.nvim",

        {
                "folke/noice.nvim",
                event = "VeryLazy",
                opts = {
                        -- add any options here
                },
                dependencies = {
                        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
                        "MunifTanjim/nui.nvim",
                        -- OPTIONAL:
                        --   `nvim-notify` is only needed, if you want to use the notification view.
                        --   If not available, we use `mini` as the fallback
                        "rcarriga/nvim-notify",
                }
        },

        "folke/neodev.nvim", -- Helps lua files understand vim api

        {
                'hrsh7th/nvim-cmp',                     -- Code completion menu
                dependencies = {
                        'hrsh7th/cmp-nvim-lsp',         -- Code completion items

                        'L3MON4D3/LuaSnip',             -- Snippet engine
                        'saadparwaiz1/cmp_luasnip',     -- Integrates with CMP
                        'rafamadriz/friendly-snippets', -- Snippet collection
                },
        },
        "nvim-tree/nvim-web-devicons", -- Icons
        {
                'nvim-lualine/lualine.nvim',
                dependencies = {
                        "nvim-tree/nvim-web-devicons"
                },
                config = function()
                        require("lualine").setup({
                                icons_enabled = true,
                                theme = 'onedark',
                        })
                end,
        },
        {
                "nvim-neo-tree/neo-tree.nvim", -- File tree
                branch = "v3.x",
                dependencies = {
                        "nvim-lua/plenary.nvim",
                        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim",
                },
        }
}
