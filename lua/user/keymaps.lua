local opts = {noremap = true, silent = true}

-- Function nvim keymap
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--> NORMAL -->

-- Navigation Tabs
keymap("n", "<A-p>", ":tabp<CR>", opts)
keymap("n", "<A-m>", ":tabn<CR>", opts)

-- Navigation Window
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Rezise Window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

--> INSERT -->

-- Exit Normal Mode
keymap("i", "ii", "<Esc>", opts)

--> NORMAL PLUGINS -->

-- Terminal
keymap("n", "<C-t>", ":ToggleTerm<CR>", opts)

-- Telescope
keymap("n", "<C-s>", ":Telescope find_files<CR>", opts)
