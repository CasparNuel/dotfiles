if vim.fn.executable("freeze") == 1 then
	vim.api.nvim_create_user_command("Freeze", function(opts)
		local file = vim.fn.expand("%:p")
		if file == "" then
			vim.notify("No file associated with this buffer", vim.log.levels.ERROR)
			return
		end

		local outpath
		if #opts.fargs == 0 then
			outpath = vim.fn.getcwd() .. "/freeze.png"
		else
			outpath = opts.fargs[1]
		end

		local cmd
		if opts.range == 0 then
			cmd = {
				"freeze",
				file,
				"-c",
				"full",
				"-o",
				outpath
			}
		else
			cmd = {
				"freeze",
				file,
				"-c",
				"full",
				"--lines",
				string.format("%d,%d", opts.line1, opts.line2),
				"-o",
				outpath
			}
		end

		local process = vim.system(cmd, {
			cwd = vim.fn.getcwd(),
		})

		local result = process:wait()
		local exitcode = result.code

		if exitcode ~= 0 then
			vim.notify("An error occurred invoking freeze", vim.log.levels.ERROR)
		end
	end, {
		range = true,
		nargs = "*",
		desc = "Run freeze on current file or visual selection",
	})
end
