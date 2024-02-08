vim.api.nvim_create_user_command("Diagnostics", function() vim.diagnostic.open_float() end, {})
