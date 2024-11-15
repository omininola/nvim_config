return {
    -- LSP
    {
	{'neovim/nvim-lspconfig',},
	{'hrsh7th/cmp-nvim-lsp'},
	{
	    'hrsh7th/nvim-cmp',
	    config = function()
		require('configs/plugins/lsp')
	    end,
	},
    },
    --[[
--    -- LSP
    {	
	{ -- Gerenciador de LSPs
	    "williamboman/mason.nvim",
	    config = true,
	},
	{ -- Integrador do Mason com nvim-lspconfig
	    "williamboman/mason-lspconfig.nvim",
	    opts = {
		ensure_installed = {
		    "ts_ls",
		    "tailwindcss",
		    "jsonls",
		    "cssls",
		    "html",
		},
	    },
	},
	{ -- Plugin principal para configuração do LSP
	    "neovim/nvim-lspconfig", 
	    config = function() 
		require("configs/plugins/lsp")
	    end,
	},
	{ -- Plugin para autocompletar
	    "hrsh7th/nvim-cmp",
	    dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- Fonte do LSP para nvim-cmp
		"L3MON4D3/LuaSnip",     -- Snippets
	    },
	},	
    },
--
--]]
}
