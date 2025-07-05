vim.o.background = "dark"

-- require("rose-pine").setup({
-- 	variant = "auto", -- auto, main, moon, or dawn
-- 	dark_variant = "main", -- main, moon, or dawn
-- 	dim_inactive_windows = false,
-- 	extend_background_behind_borders = true,
--
-- 	enable = {
-- 		terminal = true,
-- 		legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
-- 		migrations = true, -- Handle deprecated options automatically
-- 	},
--
-- 	styles = {
-- 		bold = true,
-- 		italic = true,
-- 		transparency = true,
-- 	},
--
-- 	groups = {
-- 		-- border = "muted",
-- 		-- link = "iris",
-- 		-- panel = "surface",
--
-- 		-- error = "love",
-- 		-- hint = "iris",
-- 		-- info = "foam",
-- 		-- note = "pine",
-- 		-- todo = "rose",
-- 		-- warn = "gold",
-- 		--
-- 		-- git_add = "foam",
-- 		-- git_change = "rose",
-- 		-- git_delete = "love",
-- 		-- git_dirty = "rose",
-- 		-- git_ignore = "muted",
-- 		-- git_merge = "iris",
-- 		-- git_rename = "pine",
-- 		-- git_stage = "iris",
-- 		-- git_text = "rose",
-- 		-- git_untracked = "subtle",
-- 		--
-- 		-- h1 = "iris",
-- 		-- h2 = "foam",
-- 		-- h3 = "rose",
-- 		-- h4 = "gold",
-- 		-- h5 = "pine",
-- 		-- h6 = "foam",
-- 	},
--
-- 	palette = {
-- 		-- Override the builtin palette per variant
-- 		-- main = {
-- 		-- 	base = "#191724",
-- 		-- 	overlay = "#26233a",
-- 		-- },
-- 	},
--
-- 	highlight_groups = {
-- 		-- Comment = { fg = "foam" },
-- 		-- VertSplit = { fg = "muted", bg = "muted" },
-- 	},
-- })
--
-- vim.cmd("colorscheme rose-pine")

-- Default options:
require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls

	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },

	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = true, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}

	colors = {
		theme = {
			-- change specific usages for a certain theme, or for all of them
			wave = {
				ui = {
					float = {
						bg = "none",
					},
				},
			},
			dragon = {
				syn = {
					parameter = "yellow",
				},
			},
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},

	theme = "dragon", -- Load "wave" theme
	background = { -- map the value of 'background' option to a theme
		dark = "dragon", -- try "dragon" !
		light = "lotus",
	},
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
