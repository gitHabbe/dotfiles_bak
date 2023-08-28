require('telescope').setup({
        defaults = {
                layout_config = {
                        vertical = {
                                width = 0.9
                        }
                }
        }
})

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
