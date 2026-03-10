local M = require("themes.zen_semantic")

vim.cmd.colorscheme("zenwritten")

M.apply()

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		M.apply()
	end,
})

return M
