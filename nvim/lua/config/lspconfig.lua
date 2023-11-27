local lsp = require("lspconfig")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    	vim.lsp.diagnostic.on_publish_diagnostics, {
      		update_in_insert = true,
	}
)

lsp.lua_ls.setup{}
lsp.tsserver.setup{}
lsp.gopls.setup{}
lsp.tailwindcss.setup{}
lsp.marksman.setup{}
lsp.jsonls.setup{}
lsp.html.setup{}
lsp.cssls.setup{}
lsp.pyright.setup{}
lsp.ccls.setup{}
lsp.racket_langserver.setup{}
lsp.dartls.setup{}
