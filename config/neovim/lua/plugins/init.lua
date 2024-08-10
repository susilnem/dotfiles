return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                vim.cmd.colorscheme "catppuccin"
            })
        end
    },
    -- tmux & split window navigation
    "christoomey/vim-tmux-navigator",
    "onsails/lspkind.nvim",
    "preservim/vim-pencil",
    {
        "mistricky/codesnap.nvim",
        build = "make",
    },
    {
        "NeogitOrg/neogit",
        lazy = false,
        dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration
        "nvim-telescope/telescope.nvim", -- optional
        },
        config = true
    },
    {
        -- markdown preview
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    "tpope/vim-obsession",

    -- Git related plugins
    'tpope/vim-fugitive',
    "ThePrimeagen/git-worktree.nvim",

    "tpope/vim-surround",
    {'romainl/vim-qf'},
    "xiyaowong/nvim-transparent",
    { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = function()
        pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
        dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        }
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
    },
    'theHamsta/nvim-dap-virtual-text',
    'leoluz/nvim-dap-go',

    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup()
        end,
    },
}