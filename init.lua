vim.g.mapleader=' '
vim.g.maplocalleader=' '

vim.api.nvim_create_autocmd('FileType', {
	pattern = { '*lua', '*python' },
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

require("config.lazy")
require("config.vim_options")
require("keymaps")

vim.diagnostic.config({
    virtual_text = false,
    signs = {
        severity = vim.diagnostic.severity.ERROR
    },
    underline = {
        severity = vim.diagnostic.severity.ERROR
    }
})


vim.lsp.enable('basedpyright')
vim.lsp.enable('lua_ls')
