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
				-- Prompt can influence the completion engine.
				-- Change it to something that works for you
				prompt = ": ",

				-- Let the user handle the keybindings
				enable_keymaps = false,
			},
			popup = {
				buf_options = {
					-- Setup a special file type if you need to
					filetype = "FineCmdlinePrompt",
				},
			},
			hooks = {
				set_keymaps = function(imap, feedkeys)
					-- Restore default keybindings...
					-- Except for `<Tab>`, that's what everyone uses to autocomplete
					imap("<Esc>", fn.close)
					imap("<C-c>", fn.close)

					imap("<Up>", fn.up_search_history)
					imap("<Down>", fn.down_search_history)
				end,
			},
		})
	end,
}
