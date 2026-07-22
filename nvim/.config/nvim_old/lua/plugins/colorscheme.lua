return {
	{
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
			-- vim.cmd("colorscheme gruvbox")
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1d2021" })
			-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1d2021" })
			-- vim.api.nvim_set_hl(0, "TabLine", { bg = "#1d2021", fg = "#a89984" })
			-- vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#1d2021" })
			-- vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#1d2021" })
			-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "#282828", fg = "#ebdbb2" })
			-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#282828", fg = "#fe8019" })
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		-- config = function()
		-- 	vim.g.zenbones_darken_comments = 45
		-- 	vim.cmd.colorscheme("zenwritten")
		-- end,
	},
	{
		"thimc/gruber-darker.nvim",
		-- config = function()
		-- 	require("gruber-darker").setup({
		-- 		-- OPTIONAL
		-- 		transparent = false, -- removes the background
		-- 		-- underline = false, -- disables underline fonts
		-- 		-- bold = false, -- disables bold fonts
		-- 	})
		-- 	vim.cmd.colorscheme("gruber-darker")
		-- end,
	},
	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		-- config = function()
		-- 	-- NOTE: you do not need to call setup if you don't want to.
		-- 	require("vague").setup({
		-- 		-- optional configuration here
		-- 	})
		-- 	vim.cmd("colorscheme vague")
		-- end,
	},
	{
		"kdheepak/monochrome.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme monochrome")
		-- end,
	},
}
