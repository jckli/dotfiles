local lsp = require("lspconfig")
local configs = require("lspconfig/configs")
local util = require("lspconfig/util")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})

lsp.lua_ls.setup({})
lsp.tsserver.setup({})
lsp.gopls.setup({})
lsp.tailwindcss.setup({})
lsp.marksman.setup({})
lsp.jsonls.setup({})
lsp.html.setup({})
lsp.cssls.setup({})
lsp.pyright.setup({})
lsp.ccls.setup({})
lsp.racket_langserver.setup({})
lsp.prolog_ls.setup({})

configs.prolog_ls = {
	default_config = {
		cmd = {
			"swipl",
			"-g",
			"use_module(library(lsp_server)).",
			"-g",
			"lsp_server:main",
			"-t",
			"halt",
			"--",
			"stdio",
		},
		filetypes = { "prolog" },
		root_dir = util.root_pattern("pack.pl"),
	},
	docs = {
		description = [[
  https://github.com/jamesnvc/prolog_lsp

  Prolog Language Server
  ]],
	},
}
