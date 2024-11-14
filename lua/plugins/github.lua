return {
    -- Github
    {
	{ -- Allow git commands to be run from within Neovim and display the results in a split window.
	    'tpope/vim-fugitive',
	    config = function()
		    require("configs/plugins/fugitive")
	    end,
	},
	{ -- A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks and partial hunks.
	    'lewis6991/gitsigns.nvim',
	    opts = {
		signs = {
		    add = { text = '+' },
		    change = { text = '~' },
		    delete = { text = '_' },
		    topdelete = { text = '‾' },
		    changedelete = { text = '~' },
		},
	    },
	},
    },
}
