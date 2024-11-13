return {
	    {
			"neovim/nvim-lspconfig", -- Plugin principal para configuração do LSP
			config = function()
				    require("lspconfig")
			end
	    },
	    {
			"hrsh7th/nvim-cmp",       -- Plugin para autocompletar
			dependencies = {
				    "hrsh7th/cmp-nvim-lsp", -- Fonte do LSP para nvim-cmp
				    "L3MON4D3/LuaSnip",     -- Snippets
			}
	    },
	    {
			"williamboman/mason.nvim", -- Gerenciador de LSPs
			config = true
	    },
	    {
			"williamboman/mason-lspconfig.nvim", -- Integrador do Mason com nvim-lspconfig
			config = function()
				    require("mason").setup()
				    require("mason-lspconfig").setup()
			end
	    },
}
