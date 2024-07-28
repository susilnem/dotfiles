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
    }
}
