vim.keymap.set("n", "gvt", function()
    vim.diagnostic.config({
        virtual_text = not vim.diagnostic.config().virtual_text,
    })
end
)

vim.keymap.set("n", "gscn", function()
    vim.o.signcolumn = "no"
end
)

vim.keymap.set("n", "gscy", function()
    vim.o.signcolumn = "yes"
end
)

vim.keymap.set("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
end
)

vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.open_float()
end
)

vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({diagnostic = vim.diagnostic.get_next()})
end
)

vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({diagnostic = vim.diagnostic.get_prev()})
end
)

