vim.cmd.colorscheme('cyberdream')
vim.api.nvim_set_hl(0, 'Normal', {bg = "none"})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg = "none"})
vim.api.nvim_set_hl(0, 'SignColumn', {bg = "none"})
vim.api.nvim_set_hl(0, 'NormalNC', {bg = "none"})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg = "none"})
-- vim.api.nvim_set_hl(0, 'CursorLine', {bg = "#916386"})
vim.api.nvim_set_hl(0, 'CursorLine', {bg = "#360533"})
vim.api.nvim_set_hl(0, 'Visual', {bg = "#5c077a"})
vim.api.nvim_set_hl(0, 'MatchParen', {bg = "#f28c07"})
vim.api.nvim_set_hl(0, 'DiagnosticError', {fg = "#e34b4b"})
vim.api.nvim_set_hl(0, 'DiagnosticWarn', {fg = "#d1a64f", underline = true})
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {fg = "#e34b4b"})
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', {fg = "#d1a64f"})
vim.api.nvim_set_hl(0, 'DiagnosticVirtualLinesError', {fg = "#e34b4b"})
vim.api.nvim_set_hl(0, 'DiagnosticVirtualLinesWarn', {fg = "#d1a64f"})
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', {underline = true, fg = "#e34b4b"})
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', {fg = "#d1a64f", underline = true})

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

vim.o.clipboard = "unnamedplus"

