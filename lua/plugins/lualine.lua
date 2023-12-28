return {
	"nvim-lualine/lualine.nvim",
	config = function()
		do
			local M = require("lualine.components.branch"):extend()

			function M:init(options)
				options.icon = options.icon or { "", color = { fg = "#fc5603" } }
				M.super.init(self, options)
			end
		end

		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { { "diagnostics", sources = { "nvim_lsp" } } },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
		})
	end,
}
