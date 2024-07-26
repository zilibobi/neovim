return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			luau = { "selene" },
		}

		vim.api.nvim_create_autocmd({ "InsertLeave", "BufEnter" }, {
			callback = function()
				vim.diagnostic.config({
					virtual_text = true,
					underline = true,
					signs = true,
				})

				require("lint").try_lint()
			end,
		})

		vim.api.nvim_create_autocmd({ "InsertEnter" }, {
			callback = function()
				vim.diagnostic.config({
					virtual_text = false,
					underline = false,
					signs = false,
				})
			end,
		})
	end,
}
