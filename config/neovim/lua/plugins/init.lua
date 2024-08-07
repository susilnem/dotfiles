return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccino").setup({
                vim.cmd.colorscheme "catppuccin"
            })
        end
    },
    -- tmux & split window navigation
    "christoomey/vim-tmux-navigator",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "mistricky/codesnap.nvim",
        build = "make",
    },
    {
        "NeogitOrg/neogit",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },
}