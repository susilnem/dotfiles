local keymap = vim.keymap.set

-- Keymaps

-- insert mode keymaps 
keymap("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "jk to <Esc>" })

-- clear search highlights
keymap("n", "<leader><space>", ":nohlsearch<CR>", { silent = true, remap = false, desc = "Clear search highlights" })

-- increment and decrement numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap("n", "<C-W>,", ":vertical resize -10<CR>", {noremap=true}) -- resize vertical split
keymap("n", "<C-W>.", ":vertical resize +10<CR>", {noremap=true}) -- resize vertical split

-- toggle transparency
keymap("n", "TT", ":TransparentToggle<CR>", {noremap=true})

-- Remap for dealing with word wrap
keymap('', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Navigation keymaps
keymap('n', '<C-J>', '<C-W><C-J>', { silent = true, remap = false })
keymap('n', '<C-K>', '<C-W><C-K>', { silent = true, remap = false })
keymap('n', '<C-L>', '<C-W><C-L>', { silent = true, remap = false })
keymap('n', '<C-H>', '<C-W><C-H>', { silent = true, remap = false })

-- tab keymaps
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab