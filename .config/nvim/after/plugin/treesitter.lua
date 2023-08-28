require('nvim-treesitter.configs').setup {
    ensure_installed = { "vim", "vimdoc", "lua", "typescript", "javascript" },
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
}
