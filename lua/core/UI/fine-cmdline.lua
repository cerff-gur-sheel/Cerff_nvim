return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = {
		{ "MunifTanjim/nui.nvim" },
	},
	config = function()
		local fineline = require("fine-cmdline")
		local fn = fineline.fn

		fineline.setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = ": ",
			},
			popup = {
				relative = "editor",
				position = {
					row = "20%",
					col = "50%",
				},
				size = {
					width = "40%",
				},
				border = {
					style = "rounded",
				},
				buf_options = {
					modifiable = true,
					readonly = true,
				},
				win_options = {
					winblend = 10,
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
			hooks = {
				before_mount = function(input)
					-- code
				end,
				after_mount = function(input)
					-- code
				end,
				set_keymaps = function(imap, feedkeys)
					-- code
				end,
			},
		})
	end,
}
