vim.api.nvim_create_user_command("Diagnostics", vim.diagnostic.open_float, {})
vim.keymap.set("n", "J", vim.cmd.Diagnostics)
