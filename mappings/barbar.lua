local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<C-x>", "<Cmd>BufferClose<CR>", opts)
