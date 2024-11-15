require("zen-mode").setup({
    window = {
        backdrop = 0.05,
        width = 120,
        height = 1,
        options = {
            signcolumn = "no",
            number = false,
            relativenumber = false,
            cursorline = false,
            cursorcolumn = false,
            foldcolumn = "0",
            list = false,
        },
    },

    on_open = function(win)
        vim.cmd [[
            set colorcolumn=0
        ]]
    end,

    on_close = function()
        vim.cmd [[
            set colorcolumn=80
        ]]
    end,
})

vim.keymap.set('n', '<leader>z', '<cmd>ZenMode<cr>', {silent = true})
