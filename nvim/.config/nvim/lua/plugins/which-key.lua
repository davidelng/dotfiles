return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function()
		require("which-key").setup({
			preset = "modern",
			icons = {
				-- set icon mappings to true if you have a Nerd Font
				mappings = false,
				-- set keys to an empty list if you have a Nerd Font
				keys = {},
			},
			win = {
				border = "rounded",
			},
		})
	end,
}
