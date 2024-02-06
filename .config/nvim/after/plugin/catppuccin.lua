require("catppuccin").setup({
	transparent_background = true,
	custom_highlights = {
		LineNr = {
			fg = "#a3eaff",
		},
		NormalFloat = {
			bg = "#282b33",
		}
	},
	integrations = {
		which_key = true,
	}
})

vim.cmd.colorscheme "catppuccin"
