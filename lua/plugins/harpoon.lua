return {
    "https://github.com/theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local har = require('harpoon')
        har:setup()
        vim.keymap.set('n', '<leader>a', function() har:list():add() end)
        vim.keymap.set('n', '<leader>h', function() har.ui:toggle_quick_menu(har:list()) end)
        for i=1,9,1 do
            vim.keymap.set('n', string.format("<leader>%d", i), function() har:list():select(i) end)
        end
    end
}
