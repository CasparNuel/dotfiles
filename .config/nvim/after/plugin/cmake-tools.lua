local osys = require("cmake-tools.osys")
require("cmake-tools").setup({
	cmake_kits_path = vim.env.CMAKE_KITS_PATH,
	cmake_compile_commands_options = {
		action = "lsp"
	},
	cmake_build_directory = "build"
})
