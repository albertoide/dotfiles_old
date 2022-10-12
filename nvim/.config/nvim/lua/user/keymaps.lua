local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)

