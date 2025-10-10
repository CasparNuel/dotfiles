require("telescope").setup({
	pickers = {
		live_grep = {
			additional_args = {
				"--glob",
				"!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock,**/out/*,**/dist/*,**/.cache/*,**/build/*,**/.build/*}"
			}
		}
	}
})

vim.keymap.set("n", "<Space>g", require("telescope.builtin").live_grep)
