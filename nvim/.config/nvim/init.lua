-- [[ dronememoria ]] --
-- 1. Options
-- 2. Keymaps
-- 3. Autocommands
-- 4. Treesitter & LSP
-- 5. Plugins
-- 6. Colors

-- ======================================================================
-- Settings
-- See :help option-list
-- See :help vim.opt
-- ======================================================================

-- New UI
require("vim._core.ui2").enable()
vim.o.winborder = "rounded"

-- Set line relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set scrolloff, min numbers of line above cursor
vim.opt.scrolloff = 10

-- Enable signcolum
vim.opt.signcolumn = "yes" -- why "yes" and not true?

-- Tabs and spaces
vim.opt.tabstop = 4 -- spaces for tab (just rendering, no effect on text)
vim.opt.shiftwidth = 4 -- spaces for indentation width
vim.opt.expandtab = true -- replace tab with spaces

-- Indentation
vim.opt.autoindent = true -- copy indent from current line when starting a new one
vim.opt.breakindent = true -- indent wrapped lines

-- Wrap
vim.opt.wrap = false

-- Cursor line and color column
vim.opt.cursorline = true
vim.opt.colorcolumn = ""

-- Enable mouse mode
vim.opt.mouse = "a"

-- Search and replace
vim.opt.inccommand = "split" -- preview substitutions live as you type
vim.opt.incsearch = true -- highlight matching strings
vim.opt.ignorecase = true -- case insensitive search
vim.opt.smartcase = true -- unless mixed case is used

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Save undo history
vim.opt.undofile = true

-- Add system clipboard
-- vim.opt.clipboard:append("unnamedplus")

-- Set custom leader key
-- NOTE: must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " " -- to be used for mappings which are local to a buffer

-- Enable nerd font support
vim.g.have_nerd_font = true

-- Enable 24-bit RGB colors
vim.opt.termguicolors = true

-- Show special signs for tabs, trailing spaces and nbsp
-- See :help 'list'
-- See :help 'listchars'
vim.opt.list = false

-- Decrease update time
-- See :help updatetime
vim.opt.updatetime = 500

-- Completion
vim.o.autocomplete = true
vim.o.completeopt = "menu,menuone,noselect,popup"
vim.o.pumborder = "rounded"
vim.o.pummaxwidth = 40

-- ======================================================================
-- Keymaps
-- ======================================================================

-- Clear search highlights pressing Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit terminal mode in the builtin terminal easier
-- NOTE: This won't work in all terminal emulators/tmux/etc.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Windows and Tab management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- ======================================================================
-- Autocommands
-- ======================================================================

-- Help inside new tab
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.txt",
	callback = function()
		if vim.bo.buftype == "help" then
			vim.cmd("wincmd T")
		end
	end,
})

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- ======================================================================
-- Treesitter & LSP
-- ======================================================================

-- Treesitter
vim.pack.add({ {
	src = "https://github.com/nvim-treesitter/nvim-treesitter",
	version = "main",
} })
require("nvim-treesitter").install({
	"bash",
	"c",
	"clojure",
	"css",
	"diff",
	"dockerfile",
	"gitignore",
	"go",
	"gomod",
	"gosum",
	"gowork",
	"html",
	"ini",
	"java",
	"javascript",
	"jsdoc",
	"json",
	"lua",
	"luadoc",
	"make",
	"markdown",
	"markdown_inline",
	"nginx",
	"proto",
	"python",
	"query",
	"regex",
	"rust",
	"sql",
	"terraform",
	"toml",
	"typescript",
	"vim",
	"vimdoc",
	"xml",
	"yaml",
	"zig",
})

-- Lsp
vim.pack.add({
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})
require("mason").setup({
	ui = { border = "rounded" },
	-- ensure_installed = {
	-- 	"black",
	-- 	"eslint_d",
	-- 	"markdownlint",
	-- 	"prettier",
	-- 	"pylint",
	-- 	"stylua",
	-- },
})

-- override to shut vim global error
vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".git" },
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
		},
	},
})
vim.lsp.enable({
	"clangd",
	"clojure_lsp",
	"gopls",
	"html",
	"jdtls",
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"ts_ls",
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if not client then
			return
		end

		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, desc = desc })
		end

		map("n", "gd", vim.lsp.buf.definition, "Go to definition")
		map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
		map("n", "K", vim.lsp.buf.hover, "Hover docs")
		map("n", "<leader>f", function()
			-- vim.lsp.buf.format({ async = false })
			require("conform").format({ async = false })
		end, "Format buffer")

		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end

		if client:supports_method("textDocument/inlayHint") then
			vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
		end
	end,
})

-- capabilities tells each server what the client supports
-- this pulls in native completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Diagnostic
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = { severity = vim.diagnostic.severity.ERROR },
	update_in_insert = false,
	severity_sort = true,
	-- float = { border = "rounded", source = "if_many" },
	float = true,
})
vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open diagnostic float" })

-- ======================================================================
-- Plugins
-- ======================================================================

-- File manager
vim.pack.add({ { src = "https://github.com/stevearc/oil.nvim" } })
require("oil").setup()

-- Autopairs
vim.pack.add({ { src = "https://github.com/echasnovski/mini.pairs" } })
require("mini.pairs").setup()

-- Formatter
vim.pack.add({ { src = "https://github.com/stevearc/conform.nvim" } })
require("conform").setup({
	formatters_by_ft = {
		css = { "prettier" },
		go = { "gofmt" },
		html = { "prettier" },
		javascript = { "prettier" },
		json = { "prettier" },
		lua = { "stylua" },
		markdown = { "prettier" },
		python = { "black" },
		typescript = { "prettier" },
		yaml = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback", -- fall back to LSP if no conform formatter defined
	},
})

-- Gitsigns
vim.pack.add({ { src = "https://github.com/lewis6991/gitsigns.nvim" } })
require("gitsigns").setup({
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
})

-- Statusline
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
})
local customLualine = function()
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
	local lualineTheme = {
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
	return lualineTheme
end
require("lualine").setup({
	options = {
		theme = customLualine(),
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		icons_enabled = false,
	},
	sections = {
		lualine_c = {
			{ "filename" },
			{
				function()
					return vim.lsp.status()
				end,
				cond = function()
					return vim.lsp.status() ~= ""
				end,
			},
		},
		lualine_x = {
			-- { "diagnostics" },
			-- "encoding",
			-- "fileformat",
			-- "filetype",
		},
	},
})

-- ======================================================================
-- Colors
-- ======================================================================

vim.pack.add({
	{ src = "https://github.com/rktjmp/lush.nvim" },
	{ src = "https://github.com/zenbones-theme/zenbones.nvim" },
})

vim.cmd.colorscheme("zenwritten")
local customZenwritten = function()
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
	local set = vim.api.nvim_set_hl
	set(0, "String", { fg = colors.green })
	set(0, "Character", { fg = colors.green })
	set(0, "Constant", { fg = colors.yellow })
	set(0, "Boolean", { fg = colors.yellow })
	set(0, "Number", { fg = colors.yellow })
	set(0, "@string", { fg = colors.green })
	set(0, "@boolean", { fg = colors.yellow })
	set(0, "@number", { fg = colors.yellow })
	set(0, "@constant", { fg = colors.yellow })
	set(0, "NormalFloat", { bg = colors.black, fg = colors.white })
	set(0, "FloatBorder", { bg = colors.black, fg = colors.white })
	set(0, "TabLine", { bg = colors.black, fg = colors.bright_white })
	set(0, "TabLineSel", { bg = colors.black, fg = colors.white })
	set(0, "TabLineFill", { bg = colors.black, fg = colors.white })
	set(0, "Pmenu", { bg = colors.black, fg = colors.white })
	set(0, "PmenuSel", { bg = colors.black, fg = colors.yellow })
	set(0, "PmenuBorder", { fg = colors.white })
	set(0, "PmenuThumb", { bg = colors.white })
end
customZenwritten()
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		customZenwritten()
	end,
})
