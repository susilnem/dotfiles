return {
    {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
	    require('functions/_catppuccin')
	end
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-live-grep-raw.nvim',
        },
        config = function()
            require('functions/_telescope')
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('functions/_treesitter')
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-context',
            'andymass/vim-matchup',
        },
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('functions/_alpha-nvim')
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require('functions/_indent-blankline')
        end,
    },
    {'tpope/vim-fugitive'},
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('functions/_gitsigns')
        end,
    },
    {
        'folke/zen-mode.nvim',
        config = function()
            require('functions/_zen-mode')
        end,
        dependencies = {
            'folke/twilight.nvim',
        }
    },
    {
        "ms-jpq/chadtree",
        branch = "chad",
        build = "python3 -m chadtree deps",
        config = function()
            require('functions/_chadtree')
        end,
        dependencies = {
            {
                {'ryanoasis/vim-devicons', opt = true},
                {'adelarsq/vim-emoji-icon-theme', opt = true},
            }
        },
    },
    {
        -- Manage external dependencies
        'williamboman/mason.nvim',
        build = ':MasonUpdate', -- :MasonUpdate updates registry contents
        config = function()
            require('functions/_mason')
        end,
    },
    {
        -- Manage external dependencies for lsp
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('functions/_mason-lspconfig')
        end,
        dependencies = {
            'williamboman/mason.nvim',
        }
    },
    {
        -- lsp support
        'neovim/nvim-lspconfig',
        config = function()
            require('functions/_lspconfig')
        end,
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
        },
    },
    {
        'folke/trouble.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require('functions/_trouble')
        end,
    },
}
