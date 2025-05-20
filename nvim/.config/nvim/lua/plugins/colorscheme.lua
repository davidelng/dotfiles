return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = false,
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "hard", -- can be "hard", "soft" or empty string
			palette_overrides = {},
			overrides = {
				SignColumn = { bg = "#1d2021" },
			},
			dim_inactive = false,
			transparent_mode = false,
		})
		vim.cmd("colorscheme gruvbox")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1d2021" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1d2021" })
		vim.api.nvim_set_hl(0, "TabLine", { bg = "#1d2021", fg = "#a89984" })
		vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#1d2021" })
		vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#1d2021" })
	end,
}
