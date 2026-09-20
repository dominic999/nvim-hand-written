vim.cmd.colorscheme('cyberdream')

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
-- vim.opt.scrolloff = 100
vim.opt.sidescrolloff = 30
vim.o.signcolumn = "yes"

vim.o.tabstop = 4
vim.o.ruler = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.wrap = false


vim.o.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}



vim.o.termguicolors = true
vim.o.wildmenu = true

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('n', '<leader>b', function()
	print("merge leader");
end)

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*.py'},
    callback = function()
        vim.o.colorcolumn = "80"
    end
})

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*.js', '*.jsx', '*.ts', '*.tsx'},
    callback = function()
        -- vim.o.colorcolumn = "80"
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
        vim.o.softtabstop = 2
    end
})

vim.o.clipboard = "unnamedplus"
