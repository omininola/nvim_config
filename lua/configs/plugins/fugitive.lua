vim.keymap.set("n", "<leader>g", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", vim.cmd.Git("add ."))
vim.keymap.set("n", "<leader>gp", vim.cmd.Git("push"))
