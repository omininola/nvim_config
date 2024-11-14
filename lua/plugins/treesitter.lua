return {
    -- Treesitter
    {
	'nvim-treesitter/nvim-treesitter', 
	build = ':TSUpdate',
	config = function() 
	    require("configs/plugins/treesitter")
	end,
    },
}
