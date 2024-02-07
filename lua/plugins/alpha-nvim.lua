return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.opts.hl = "boolean"
		dashboard.section.header.val = {
			[[  ▄▄▄· ▄▄▄ .▄▄▄▄▄ ▄ .▄▄▄▄ .▄▄▄   ]],
			[[ ▐█ ▀█ ▀▄.▀·•██  ██▪▐█▀▄.▀·▀▄ █· ]],
			[[ ▄█▀▀█ ▐▀▀▪▄ ▐█.▪██▀▐█▐▀▀▪▄▐▀▀▄  ]],
			[[ ▐█ ▪▐▌▐█▄▄▌ ▐█▌·██▌▐▀▐█▄▄▌▐█•█▌ ]],
			[[  ▀  ▀  ▀▀▀  ▀▀▀ ▀▀▀ · ▀▀▀ .▀  ▀ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene <CR>"),
			dashboard.button("SPC p f", "󰈞  Find file"),
			dashboard.button("SPC p g", "  Find Git file"),
			dashboard.button("SPC p s", "󰈬  Find word"),
			dashboard.button("SPC p v", "  Open Netrw"),
		}

		alpha.setup(dashboard.config)
	end,
}
