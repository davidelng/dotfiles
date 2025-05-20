return { -- Autocompletion
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		-- Snippet Engine
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				-- Build Step is needed for regex support in snippets.
				return "make install_jsregexp"
			end)(),
			dependencies = {},
			opts = {},
		},
		"folke/lazydev.nvim",
	},
	--- @module 'blink.cmp'
	--- @type blink.cmp.Config
	opts = {
		keymap = {
			-- 'default' (recommended) for mappings similar to built-in completions
			--   <c-y> to accept ([y]es) the completion.
			--    This will auto-import if your LSP supports it.
			--    This will expand snippets if the LSP sent a snippet.
			-- 'super-tab' for tab to accept
			-- 'enter' for enter to accept
			-- 'none' for no mappings
			--
			-- Read `:help ins-completion`
			--
			-- All presets have the following mappings:
			-- <tab>/<s-tab>: move to right/left of your snippet expansion
			-- <c-space>: Open menu or open docs if already open
			-- <c-n>/<c-p> or <up>/<down>: Select next/previous item
			-- <c-e>: Hide menu
			-- <c-k>: Toggle signature help
			--
			-- See :h blink-cmp-config-keymap for defining your own keymap
			preset = "default",
			["<C-k>"] = { "select_prev" },
			["<C-j>"] = { "select_next" },
			-- ['<CR>'] = { 'accept' },
			["<C-b>"] = { "scroll_documentation_down" },
			["<C-f>"] = { "scroll_documentation_up" },

			-- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
			--    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
		},

		appearance = { nerd_font_variant = "mono" },

		completion = {
			-- By default, you may press `<c-space>` to show the documentation.
			-- Optionally, set `auto_show = true` to show the documentation after a delay.
			documentation = {
				auto_show = false,
				auto_show_delay_ms = 500,
				window = {
					border = "rounded",
					winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:BlinkCmpKindText,Search:None",
				},
			},
			menu = {
				border = "rounded",
				draw = { gap = 1 },
				winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:BlinkCmpKindText,Search:None",
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "lazydev" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},

		snippets = { preset = "luasnip" },

		fuzzy = { implementation = "lua" },

		-- Shows a signature help window while you type arguments for a function
		signature = {
			enabled = true,
			window = {
				border = "rounded",
				winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:BlinkCmpKindText,Search:None",
			},
		},
	},
}
