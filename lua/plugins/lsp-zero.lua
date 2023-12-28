return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		-- LSP management
		{ "williamboman/mason-lspconfig.nvim" },
		{ "williamboman/mason.nvim" },

		-- LSP support
		{ "neovim/nvim-lspconfig" },

		-- Autocompletion
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/nvim-cmp" },
		{ "L3MON4D3/LuaSnip" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		lsp_zero.on_attach(function(_, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		local cmp = require("cmp")

		local cmp_action = lsp_zero.cmp_action()
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-j>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),

				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),

				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
		})

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = { "luau_lsp", "lua_ls" },
			handlers = {
				lsp_zero.default_setup,

				["lua_ls"] = function()
					require("plugins.lspconfig.lua")
				end,
			},
		})

		lsp_zero.setup()
	end,
}
