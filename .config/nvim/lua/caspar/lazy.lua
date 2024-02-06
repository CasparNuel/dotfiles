local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"folke/which-key.nvim"},

	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
		"nvim-tree/nvim-web-devicons"
		}
	},

	{"akinsho/toggleterm.nvim"},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},

	{"mbbill/undotree"},

	{"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/nvim-cmp"},
	{"L3MON4D3/LuaSnip"},

	{"lervag/vimtex"},

	{"kaarmu/typst.vim"},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},

	{"catppuccin/nvim"},
})
