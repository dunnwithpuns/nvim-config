function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_backgroun = true,

				enable = {
					terminal = false,
				},
				styles = {
					italic = true,
					bold = true,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {

					TelescopeBorder = { fg = "highlight_high" },
					TelescopeResultsNormal = { fg = "subtle" },
					TelescopeSelection = { fg = "text" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
					CurSearch = { fg = "base", bg = "rose", inherit = false },
					Search = { bg = "rose", blend = 20, inherit = false },
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
			ColorMyPencils()
		end,
	},
}
