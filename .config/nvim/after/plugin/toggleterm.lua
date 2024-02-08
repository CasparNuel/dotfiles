require("toggleterm").setup({
	open_mapping = [[<Space>t]],
	insert_mappings = false,
	direction = "float",
	float_opts = {
		border = "curved"
	},
	winbar = {
		enabled = true,
		name_formatter = function (term)
			return term.name
		end
	}
})
