return {
	"lopi-py/luau-lsp.nvim",
	config = function()
		require("luau-lsp").setup({
			sourcemap = {
				enable = true, -- enable sourcemap generation
			},
			types = {
				roblox = true, -- enable roblox api
			},
			server = {
				settings = {
					["luau-lsp"] = {
						require = {
							mode = "relativeToFile",
							directoryAliases = {
								["@lune/"] = "~/.lune/.typedefs/0.7.11",
							},
						},
						-- enable auto imports
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
