
vim.g.mapleader = ','
vim.g.maplocalleader = ','

local opts = { noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

map("n", "<C-D>", "<Cmd>NvimTreeToggle<CR>", opts)
map("n", "<Tab>", "<Cmd>bp<CR>", opts)
map("n", "<C-Z>", "<Cmd>ToggleTerm<CR>", opts)
map("t", "<Esc>", "<C-\\><C-N>", opts)
map("t", "<C-W>", "<C-\\><C-N><C-W>", opts)
-- map("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<CR>'", {noremap = true, silent = true, expr = true}) 
