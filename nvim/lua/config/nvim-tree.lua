vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeFocus<CR>", { silent = true })

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function(data)
	local real_file = vim.fn.filereadable(data.file) == 1

  	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  	if not real_file and not no_name then
    		return
  	end

  	-- open the tree, find the file but don't focus it
  	require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })

	end
})


require("nvim-tree").setup({
	open_on_tab = true,
  	sort_by = "case_sensitive",
  	renderer = {
    		group_empty = true,
  	},
	filters = {
		git_ignored = false,
		dotfiles = false,
	},
	view = {
		width = 50,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	}
})
