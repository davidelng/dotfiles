local M = {}

-- Gruvbox hard dark palette
local colors = {
	bg = "#1d2021",
	fg = "#ebdbb2",
	inactive_fg = "#a89984",
	black = "#282828",
	orange = "#fe8019",
}

function M.apply()
	local set = vim.api.nvim_set_hl

	set(0, "NormalFloat", { bg = colors.bg })
	set(0, "FloatBorder", { bg = colors.bg })
	set(0, "TabLine", { bg = colors.bg, fg = colors.inactive_fg })
	set(0, "TabLineSel", { bg = colors.bg })
	set(0, "TabLineFill", { bg = colors.bg })
	set(0, "Pmenu", { bg = colors.black, fg = colors.fg })
	set(0, "PmenuSel", { bg = colors.black, fg = colors.orange })
end

------------------------------------------------
-- Lualine theme compatible with Gruvbox hard dark
------------------------------------------------
M.lualine = {
	normal = {
		a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	insert = {
		a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	visual = {
		a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	replace = {
		a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	command = {
		a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	inactive = {
		a = { bg = colors.bg, fg = colors.inactive_fg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.inactive_fg },
		c = { bg = colors.bg, fg = colors.inactive_fg },
	},
}

return M
