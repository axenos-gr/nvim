return {
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            "lewis6991/async.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function(_, opts)
            require("refactoring").setup(opts)
        end,
    },
}
