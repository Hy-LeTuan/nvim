vim.o.background = "dark"

require("onedark").setup({
	style = "warmer",
	transparent = true,
	term_colors = true,
	ending_tildes = true,
	cmp_itemkind_reverse = true,
	dim_unused_panel = true,

	code_style = {
		comments = "none",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},

	lualine = {
		transparent = false, -- lualine center bar transparency
	},
})

require("onedark").load()

-- setup must be called before loading
vim.cmd("colorscheme onedark")
