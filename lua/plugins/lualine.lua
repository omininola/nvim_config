return {
    { -- Beautiful terminal
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
	    require('configs/plugins/lualine')
	end,
    },
}
