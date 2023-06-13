local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    mappings = {
      i = {
	["<esc>"] = actions.close,
      },
    },
  },
}

vim.keymap.set("n", "<C-f>", function()
    		builtin.find_files({
      			no_ignore = false,
      			hidden = true
    		})
	end)
vim.keymap.set("n", "<C-d>", function()
    		builtin.live_grep({
      			no_ignore = false,
      			hidden = true,
			search_dirs = {vim.fn.expand("%:p")}
    		})
	end)
