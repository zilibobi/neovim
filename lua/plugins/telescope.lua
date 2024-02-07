return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.load_extension("fzf")

		-- set keymaps
		vim.keymap.set("n", "<leader>pf", function()
			builtin.find_files()
		end)

		vim.keymap.set("n", "<leader>pg", function()
			builtin.git_files()
		end)

		vim.keymap.set("n", "<leader>ps", function()
			builtin.live_grep()
		end)
	end,
}
