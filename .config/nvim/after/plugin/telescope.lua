require("telescope").setup({})

vim.keymap.set("n", "<Space>g", require("telescope.builtin").live_grep)
