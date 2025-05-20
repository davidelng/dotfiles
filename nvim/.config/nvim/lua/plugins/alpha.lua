return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local padding = vim.fn.winheight(0) < 40 and 5 or 12

		local header = {}
		for _ = 1, padding do
			table.insert(header, "")
		end
		for _, line in ipairs({
			[[                               __                ]],
			[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}) do
			table.insert(header, line)
		end

		-- -- Set header
		-- https://github.com/MaximilianLloyd/ascii.nvim
		dashboard.section.header.val = header
		dashboard.section.header.opts.hl = "Normal"
		dashboard.section.header.opts.position = "center"

		-- Set menu
		dashboard.section.buttons.val = {}

		local version = vim.version()
		local nvim_version = string.format("v%d.%d.%d", version.major, version.minor, version.patch)

		dashboard.section.footer.val = nvim_version
		dashboard.section.footer.opts.hl = "Normal"

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
