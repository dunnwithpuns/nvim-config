function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_create_autocmd("TextYankPost", {
		desc = "Highlight when yanking (copying) text",
		group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
		callback = function()
			vim.highlight.on_yank()
		end,
	})
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({

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
		"erikbackman/brightburn.vim",
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
			ColorMyPencils()
		end,
	},
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	name = "gruvbox",
	-- 	config = function()
	-- 		require("gruvbox").setup({
	-- 			terminal_colors = true, -- add neovim terminal colors
	-- 			undercurl = true,
	-- 			underline = false,
	-- 			bold = true,
	-- 			italic = {
	-- 				strings = false,
	-- 				emphasis = false,
	-- 				comments = false,
	-- 				operators = false,
	-- 				folds = false,
	-- 			},
	-- 			strikethrough = true,
	-- 			invert_selection = false,
	-- 			invert_signs = false,
	-- 			invert_tabline = false,
	-- 			invert_intend_guides = false,
	-- 			inverse = false, -- invert background for search, diffs, statuslines and erros,
	-- 			contrast = "", -- can be "hard", "soft" or empty string
	-- 			palette_overrides = {},
	-- 			overrides = {},
	-- 			dim_inactive = false,
	-- 			transparent_mode = true,
	-- 		})
	-- 	end,
	-- },
}
