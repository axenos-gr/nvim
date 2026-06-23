return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
        require("ts_context_commentstring").setup({
            enable_autocmd = false,
        })

        local comment = require("Comment")

        local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

        comment.setup({
            pre_hook = function(ctx)
                local ok, parser = pcall(vim.treesitter.get_parser, 0)
                if not ok or not parser then
                    return
                end
                return ts_context_commentstring.create_pre_hook()(ctx)
            end,
        })
    end,
}
