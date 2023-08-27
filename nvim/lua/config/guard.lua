local ft = require("guard.filetype")

ft("c,cpp"):fmt({
	cmd = "clang-format",
	args = { "--style={BasedOnStyle: Google, UseTab: Always, IndentWidth: 8, TabWidth: 8}" },
	stdin = true,
})
ft("typescript,javascript,typescriptreact,javascriptreact"):fmt("prettierd")

require("guard").setup({
    -- the only options for the setup function
    fmt_on_save = true,
    -- Use lsp if no formatter was defined for this filetype
    lsp_as_default_formatter = false,
})
