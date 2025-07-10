return -- 	"goolord/alpha-nvim",
-- 	-- dependencies = { 'echasnovski/mini.icons' },
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local startify = require("alpha.themes.startify")
-- 		-- available: devicons, mini, default is mini
-- 		-- if provider not loaded and enabled is true, it will try to use another provider
-- 		startify.file_icons.provider = "devicons"
-- 		require("alpha").setup(startify.config)
-- 	end,
-- }
--
{
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- require("alpha").setup(require("alpha.themes.theta").config)
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"",
			". ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ ݁ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ ݁ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁.",
			"",
			"",
			"		 ██████╗███████╗██████╗ ███████╗███████╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
			"		██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝   ████╗  ██║██║   ██║██║████╗ ████║",
			"		██║     █████╗  ██████╔╝█████╗  █████╗     ██╔██╗ ██║██║   ██║██║██╔████╔██║",
			"		██║     ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝     ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"		╚██████╗███████╗██║  ██║██║     ██║███████╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"		 ╚═════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"",
			"																																by cerff_gur_sheel U⩊U",
			". ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ ݁ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁. ⟡ ݁ . ݁₊ ⊹ . ݁ ⟡ ݁ . ⊹ ₊ ݁.",
		}

		-- Botões
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("r", "󰈙  Arquivos recentes", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
		}

		-- Rodapé
		dashboard.section.footer.val = {
			"",
		}

		-- Atribuir highlights específicos
		dashboard.section.header.opts.hl = "Dasboard"
		dashboard.section.buttons.opts.hl = "Buttons"
		dashboard.section.footer.opts.hl = "Footer"

		vim.api.nvim_set_hl(0, "Dasboard", { fg = "#31B0C0", bold = true })
		vim.api.nvim_set_hl(0, "Buttons", { fg = "#FF74BE", italic = true })
		vim.api.nvim_set_hl(0, "Footer", { fg = "#6272a4" })

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "alpha",
			callback = function()
				vim.opt_local.laststatus = 0
			end,
		})
	end,
}
