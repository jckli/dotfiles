local ts = require("nvim-treesitter.configs")

require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt" , "vim" },
})
require("nvim-ts-autotag").setup()

ts.setup {
	highlight = {
	    	enable = true,
	    	disable = {},
	},
	indent = {
	    	enable = true,
	    	disable = {},
	},
	autotag = {
    		enable = true,
  	},
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
