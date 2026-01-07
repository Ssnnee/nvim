-- local cmp = require('cmp')
-- local cmp_lsp = require("cmp_nvim_lsp")
-- local capabilities = vim.tbl_deep_extend(
--   "force",
--   {},
--   vim.lsp.protocol.make_client_capabilities(),
--   cmp_lsp.default_capabilities()
-- )

local capabilities = require("blink.cmp").get_lsp_capabilities()

require("fidget").setup({})
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pylsp",
		"tailwindcss",
		"ts_ls",
	},
	handlers = {
		function(server_name) -- default handler (optional)
			require("lspconfig")[server_name].setup({
				capabilities = capabilities,
			})
		end,

		zls = function()
			local lspconfig = require("lspconfig")
			lspconfig.zls.setup({
				root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
				settings = {
					zls = {
						enable_inlay_hints = true,
						enable_snippets = true,
						warn_style = true,
					},
				},
			})
			vim.g.zig_fmt_parse_errors = 0
			vim.g.zig_fmt_autosave = 0
		end,
		["lua_ls"] = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = { version = "Lua 5.1" },
						diagnostics = {
							globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
						},
					},
				},
			})
		end,
		["ts_ls"] = function()
			-- 1. Import Mason Registry
			local mason_registry = require("mason-registry")
			local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
				.. "~/.bun/install/cache/@vue/typescript-plugin/2.2.10@@@1"

			-- 2. Import lspconfig
			local lspconfig = require("lspconfig")

			-- 3. Configure ts_ls for TypeScript and Vue
			lspconfig.ts_ls.setup({
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vue_language_server_path,
							languages = { "vue" },
						},
					},
				},
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
			})
		end,

		volar = function()
			local lspconfig = require("lspconfig")
			lspconfig.volar.setup({
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = "~/.bun/install/cache/@vue/typescript-plugin/2.2.10@@@1",
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
				filetypes = {
					"javascript",
					"typescript",
					"vue",
				},
			})
		end,
	},
})

vim.diagnostic.config({
	-- update_in_insert = true,
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})
