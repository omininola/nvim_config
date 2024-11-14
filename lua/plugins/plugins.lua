local plugins = {
    -- Theme (Catpuccin)
    {
	"catppuccin/nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
	    -- load the colorscheme here
	    vim.cmd([[colorscheme catppuccin]])
	end,
    },

    -- Fuzzy Finder (Telescope)
    {
	'nvim-telescope/telescope.nvim',
	event = 'VimEnter',
	branch = '0.1.x',
	dependencies = {
	    'nvim-lua/plenary.nvim',
	    { -- If encountering errors, see telescope-fzf-native README for installation instructions
		'nvim-telescope/telescope-fzf-native.nvim',

		-- `build` is used to run some command when the plugin is installed/updated.
		-- This is only run then, not every time Neovim starts up.
		build = 'make',

		-- `cond` is a condition used to determine whether this plugin should be
		-- installed and loaded.
		cond = function()
		    return vim.fn.executable 'make' == 1
		end,
	    },
	    { 'nvim-telescope/telescope-ui-select.nvim' },
	},
    },

    -- Treesitter
    {
	'nvim-treesitter/nvim-treesitter', 
	run = ':TSUpdate'
    },

    -- Github
    {
	{'tpope/vim-fugitive'},
	{
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

    -- Utils
    {
	{
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	    -- use opts = {} for passing setup options
	    -- this is equivalent to setup({}) function
	},
	{
	    "windwp/nvim-ts-autotag",
	    ft = {
		"html",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	    },
	},
	{'tpope/vim-sleuth'},
	{'tpope/vim-surround'},
    },

    -- Copilot
    {
	'github/copilot.vim'
    },

    -- LSP
    {
	{
	    "nvimtools/none-ls.nvim",
	    event = "VeryLazy",
	},
	{
	    "neovim/nvim-lspconfig", -- Plugin principal para configuração do LSP
	    
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
    },
}

return plugins
