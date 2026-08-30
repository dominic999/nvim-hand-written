return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()

        require("telescope").setup{
            defaults = {
                preview = {
                    treesitter = false
                }
            },
            pickers = {
                colorscheme = {
                    preview = {
                        treesitter = false
                    },
                    enable_preview = true,
                }
            }
        }

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files)
        vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<C-h>', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<C-c>', builtin.commands, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>th', builtin.colorscheme, { desc = 'Telescope help tags' })


    end
}

