return {
    "stevearc/aerial.nvim",
    opts = {},
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>a", "<cmd>AerialToggle!<cr>", desc = "Aerial (Symbols)" },
    },
    config = function()
        require("aerial").setup({
            backends = { "treesitter", "lsp", "markdown", "man" },
            layout = {
                max_width = { 40, 0.2 },
                min_width = 30,
            },
            close_on_select = false,
        })
    end,
}
