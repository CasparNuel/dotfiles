require("nvim-tree").setup({
	-- Use defaults (empty)
})

-- Remaps:
vim.keymap.set("n", "<C-f>", vim.cmd.NvimTreeToggle)
