return {
	"lopi-py/luau-lsp.nvim",
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

		require("luau-lsp").setup({
			sourcemap = {
				enable = true,
				enabled = true,
				autogenerate = true,
				rojo_project_file = "default.project.json",
			},
			platform = {
				type = "roblox",
			},
			server = {
				capabilities = capabilities,
				settings = {
					["luau-lsp"] = {
						require = {
							mode = "relativeToFile",
							directoryAliases = {
								["@lune/"] = "~/.lune/.typedefs/0.7.11",
							},
						},
						completion = {
							imports = {
								enabled = true,
							},
						},
					},
				},
			},
		})
	end,
}
