return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = 'night',
        transparent = true,
        cache = true,
        styles = {
            background = 'transparent',
            keywords = { italic = true },
            comments = { italic = true },
        }
    },
    config = function()
        require('tokyonight').setup({
            -- on_colors = function(colors)
            --     colors.bg = '#ff0000'
            -- end
        })
    end
}
