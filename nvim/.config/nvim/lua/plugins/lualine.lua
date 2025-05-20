return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local custom_gruvbox = require("lualine.themes.gruvbox")
		custom_gruvbox.normal.a = { bg = "1D2021", fg = "EBDBB2", gui = "bold" }
		custom_gruvbox.normal.b = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.normal.c = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.insert.a = { bg = "1D2021", fg = "EBDBB2", gui = "bold" }
		custom_gruvbox.insert.b = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.insert.c = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.visual.a = { bg = "1D2021", fg = "EBDBB2", gui = "bold" }
		custom_gruvbox.visual.b = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.visual.c = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.replace.a = { bg = "1D2021", fg = "EBDBB2", gui = "bold" }
		custom_gruvbox.replace.b = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.replace.c = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.command.a = { bg = "1D2021", fg = "EBDBB2", gui = "bold" }
		custom_gruvbox.command.b = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.command.c = { bg = "1D2021", fg = "EBDBB2" }
		custom_gruvbox.inactive.a = { bg = "1D2021", fg = "A89984", gui = "bold" }
		custom_gruvbox.inactive.b = { bg = "1D2021", fg = "A89984" }
		custom_gruvbox.inactive.c = { bg = "1D2021", fg = "A89984" }

		require("lualine").setup({
			options = {
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "|", right = "|" },
			},
			sections = {
				lualine_x = {},
			},
		})
	end,
}
