return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    version = "*",
    lazy = true,
    config = function()
      require("nvim-tree").setup({
        vim.api.nvim_set_keymap("n", "ff", ":NvimTreeToggle<enter>", { noremap=false }) 
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) 
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) 
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) 
      })
    end,
  },