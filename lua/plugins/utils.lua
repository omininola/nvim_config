return {
    -- Utils
    {
	{ -- Autopairs
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	    -- use opts = {} for passing setup options
	    -- this is equivalent to setup({}) function
	},
	{ -- Autotag
	    "windwp/nvim-ts-autotag",
	    ft = {
		"html",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	    },
	},
	{ -- Auto Tabsize 
	    "tpope/vim-sleuth"
	},
	{ -- Change surroundings like "" to ''
	    "tpope/vim-surround"
	},
    },
}
