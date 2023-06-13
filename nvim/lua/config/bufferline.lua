require("bufferline").setup({
	options = {
	    	mode = "tabs",
		always_show_bufferline = false,
	    	show_buffer_close_icons = false,
	    	show_close_icon = false,
	    	color_icons = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = "Files",
				highlight = "Directory",
				text_align = "left",
			}
                },

	},
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
