return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_install = {
				"c",
				"cpp",
				"lua",
				"gdscript",
				"markdown",
				"markdown_inline",
				"sh",
				"c_sharp",
				"css",
				"javascript",
			},

			sync_install = false,

			auto_install = true,

			highlight = {
				enable = true,
			},
		})
	end,
}
