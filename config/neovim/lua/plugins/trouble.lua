return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  opts = {
    focus = true,
  },
  cmd = "Trouble",
  keys = {
    { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
    { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
    { "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Open Reference" },
    { "[t", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>", desc = "Move to next trouble" },
    { "]t", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>", desc = "Move to previous trouble" },
  },
}