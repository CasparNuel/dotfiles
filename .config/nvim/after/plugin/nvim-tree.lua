require("nvim-tree").setup({
	-- Use defaults (empty)
})

-- Remaps:
vim.keymap.set("n", "<C-f>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "F", vim.cmd.NvimTreeFocus)

-- Highlight files when navigating buffers
local api = require("nvim-tree.api")

vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if (vim.fn.bufname() == "NvimTree_1") then return end

        api.tree.find_file({ buf = vim.fn.bufnr() })
    end,
})
