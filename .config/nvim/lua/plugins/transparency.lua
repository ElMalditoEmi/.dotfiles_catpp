return {-- Transparency
    "xiyaowong/transparent.nvim",
    config = function()
        vim.cmd "TransparentEnable"
        vim.keymap.set('n', '<C-t>', ":TransparentToggle <CR>", {})
    end
}
