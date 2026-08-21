return {
    "neovim/nvim-lspconfig",
    opts = {
        inlay_hints = { enabled = true },
        servers = {
            typos_lsp = {
                filetypes = { "go", "python", "typescript", "javascript", "rust", "markdown" },
                init_options = {
                    diagnosticSeverity = "Warning",
                },
            },
            graphql = {
                filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
            },
            emmet_ls = {
                filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
            },
            eslint = {
                filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
            },
            lua_ls = {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        completion = { callSnippet = "Replace" },
                    },
                },
            },
            pyright = {
                settings = {
                    python = {
                        pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
                    },
                },
            },
            tailwindcss = {
                filetypes = {
                    "html",
                    "css",
                    "javascript",
                    "javascriptreact",
                    "typescript",
                    "typescriptreact",
                    "svelte",
                    "vue",
                },
            },
            gopls = {
                settings = {
                    gopls = {
                        hints = {
                            assignVariableTypes = true,
                            parameterNames = true,
                            compositeLiteralFields = true,
                            compositeLiteralTypes = true,
                            constantValues = true,
                            functionTypeParameters = true,
                            rangeVariableTypes = true,
                        },
                    },
                },
            },
        },
        diagnostics = {
            underline = true,
            update_in_insert = false,
            virtual_text = { spacing = 4, prefix = "●" },
            severity_sort = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.HINT] = "󰠠 ",
                    [vim.diagnostic.severity.INFO] = " ",
                },
            },
        },
    },
}
