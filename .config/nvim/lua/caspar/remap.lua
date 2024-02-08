vim.g.leader = " "

vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<C-d>", vim.cmd.Diagnostics)
