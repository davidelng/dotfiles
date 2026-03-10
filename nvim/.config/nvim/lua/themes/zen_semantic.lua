local M = {}

-- Zenwritten palette
local colors = {
	black = "#191919",
	red = "#DE6E7C",
	green = "#819B69",
	yellow = "#B77E64",
	blue = "#6099C0",
	magenta = "#B279A7",
	cyan = "#66A5AD",
	white = "#BBBBBB",
	bright_black = "#3D3839",
	bright_white = "#8E8E8E",
}

function M.apply()
	local set = vim.api.nvim_set_hl

	------------------------------------------------
	-- Syntax / semantic highlights
	------------------------------------------------
	-- Keywords
	-- set(0, "Keyword", { fg = colors.magenta })
	-- set(0, "Conditional", { fg = colors.magenta })
	-- set(0, "Repeat", { fg = colors.magenta })
	-- set(0, "Statement", { fg = colors.magenta })

	-- Types / primitives
	-- set(0, "Type", { fg = colors.yellow })
	-- set(0, "Structure", { fg = colors.yellow })
	-- set(0, "Typedef", { fg = colors.yellow })

	-- Strings
	set(0, "String", { fg = colors.green })
	set(0, "Character", { fg = colors.green })

	-- Constants / numbers
	set(0, "Constant", { fg = colors.yellow })
	set(0, "Boolean", { fg = colors.yellow })
	set(0, "Number", { fg = colors.yellow })

	-- Functions
	-- set(0, "Function", { fg = colors.blue })

	-- Members / fields
	-- set(0, "@property", { fg = colors.cyan })

	-- Treesitter equivalents
	-- set(0, "@keyword", { fg = colors.magenta })
	-- set(0, "@keyword.return", { fg = colors.magenta })
	-- set(0, "@keyword.function", { fg = colors.magenta })

	-- set(0, "@type", { fg = colors.yellow })
	-- set(0, "@type.builtin", { fg = colors.yellow })
	--
	-- set(0, "@string", { fg = colors.green })

	-- set(0, "@boolean", { fg = colors.red })
	-- set(0, "@number", { fg = colors.red })
	-- set(0, "@constant", { fg = colors.red })

	-- set(0, "@function", { fg = colors.blue })
	-- set(0, "@function.call", { fg = colors.blue })

	-- set(0, "@method", { fg = colors.cyan })
	-- set(0, "@method.call", { fg = colors.cyan })
	-- set(0, "@property", { fg = colors.cyan })

	-- set(0, "@comment", { fg = colors.bright_black, italic = true })

	------------------------------------------------
	-- Floating / popup / tabline overrides
	------------------------------------------------
	set(0, "NormalFloat", { bg = colors.black, fg = colors.white })
	set(0, "FloatBorder", { bg = colors.black, fg = colors.white })

	set(0, "TabLine", { bg = colors.black, fg = colors.bright_white })
	set(0, "TabLineSel", { bg = colors.black, fg = colors.white })
	set(0, "TabLineFill", { bg = colors.black, fg = colors.white })

	set(0, "Pmenu", { bg = colors.bright_black, fg = colors.white })
	set(0, "PmenuSel", { bg = colors.bright_black, fg = colors.yellow })
end

------------------------------------------------
-- Lualine theme compatible with Zenwritten
------------------------------------------------
M.lualine = {
	normal = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	insert = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	visual = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	replace = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	command = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.black, fg = colors.bright_white, gui = "bold" },
		b = { bg = colors.black, fg = colors.bright_white },
		c = { bg = colors.black, fg = colors.bright_white },
	},
}

return M
