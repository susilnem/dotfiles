return {
    "ms-jpq/chadtree",
    branch = "chad",
    build = "python3 -m chadtree deps",
    config = function()
        vim.api.nvim_set_var("chadtree_settings", {["keymap.secondary"] = {"<2-leftmouse>"}})
    end,
    dependencies = {
        {'ryanoasis/vim-devicons', opt = true},
        {'adelarsq/vim-emoji-icon-theme', opt = true},
        {'tiagofumo/vim-nerdtree-syntax-highlight', opt = true}
    },
}