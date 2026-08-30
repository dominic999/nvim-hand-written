return {
    "https://github.com/m4xshen/autoclose.nvim",
    config = function()
        require("autoclose").setup({
            ["["] = {pair = "[]"},
            ["{"] = {pair = "{}"},
            ["("] = {pair = "()"},
            ["\""] = {pair = "\"\""},
            ["\'"] = {pair = "\'\'"},
        })
    end
}

