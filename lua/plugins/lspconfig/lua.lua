require("lspconfig").lua_ls.setup({
	on_init = function(client)
		client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
			Lua = {
				runtime = { version = "LuaJIT" },
				workspace = {
					checkThirdParty = false,
					library = {
						vim.env.VIMRUNTIME,
					},
				},
				diagnostics = {
					disable = { "missing-fields" },
				},
			},
		})

		client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })

		return true
	end,
})
