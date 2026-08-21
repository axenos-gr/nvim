return {
    "ravibrock/spellwarn.nvim",
    event = "VeryLazy",
    opts = {
        enable = true,
        suggest = true,
        num_suggest = 3,
        severity = {
            SpellBad = vim.diagnostic.severity.WARN,
            SpellCap = vim.diagnostic.severity.HINT,
        },
    },
}
