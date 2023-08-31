require("neo-tree").setup({
        window = {
                position = "right"
        }
})
vim.keymap.set("n", "<leader>b", "<Cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<C-b>", "<Cmd>Neotree focus<CR>")
