local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", default_opts)
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", default_opts)

vim.keymap.set("x", "<", "<gv", default_opts)
vim.keymap.set("x", ">", ">gv", default_opts)

vim.keymap.set("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

vim.keymap.set("n", "<S-h>", ":bprevious<CR>", default_opts)
vim.keymap.set("n", "<S-l>", ":bnext<CR>", default_opts)

vim.keymap.set("n", "<leader>f", (function() vim.lsp.buf.format({timeout_ms = 5000}) end))
