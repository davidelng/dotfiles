-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Help inside new tab
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.txt",
	callback = function()
		if vim.bo.buftype == "help" then
			vim.cmd("wincmd T")
		end
	end,
})
