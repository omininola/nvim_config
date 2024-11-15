return {
    -- Harpoon
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
	"nvim-lua/plenary.nvim"
    },
    config = function()
	require("configs/plugins/harpoon")
    end,
}
