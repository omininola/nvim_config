return {
    -- Fuzzy Finder (Telescope)
    {
	'nvim-telescope/telescope.nvim',
	dependencies = {
	    'nvim-lua/plenary.nvim',
	},
	config = function() 
	    require("configs/plugins/telescope")
	end,
    },
    {
	'nvim-telescope/telescope-ui-select.nvim',
    },
}
