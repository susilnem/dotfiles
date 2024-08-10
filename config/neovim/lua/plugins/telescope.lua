return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-symbols.nvim", -- not neccessary but related
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-live-grep-raw.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')
    local actions = require("telescope.actions")
    local transform_mod = require("telescope.actions.mt").transform_mod

    local trouble = require("trouble")
    local trouble_telescope = require("trouble.sources.telescope")

    -- or create your custom action
    local custom_actions = transform_mod({
      open_trouble_qflist = function(prompt_bufnr)
        trouble.toggle("quickfix")
      end,
    })

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
            ["<C-t>"] = trouble_telescope.open,
            ["<esc>"] = actions.close,
            ["<c-f>"] = trouble.open_with_trouble
          },
        },
      },
    })

    telescope.load_extension('live_grep_args')
    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap.set -- for conciseness

    keymap('n', '<leader>ff', function() builtin.find_files({ hidden = true }) end, { silent = true })
    keymap('n', '<leader>fa', function() builtin.live_grep() end, { silent = true })
    keymap('n', '<leader>fs', builtin.grep_string, { silent = true })
    keymap('n', '<leader>fb', builtin.oldfiles, { silent = true })
    keymap('n', '<leader>fh', builtin.help_tags, { silent = true })
    keymap('n', ';', function() builtin.buffers({ sort_lastused = true }) end, { silent = true })
end,
}