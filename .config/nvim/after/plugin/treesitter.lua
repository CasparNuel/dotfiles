require("nvim-treesitter.configs").setup({
	ensure_installed = {"c", "rust", "c_sharp", "java", "javascript", "lua", "markdown", "cpp"},
	sync_install = true,
	auto_install = true,
})
