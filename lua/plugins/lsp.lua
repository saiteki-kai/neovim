local servers = {
    lua_ls = {
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                workspace = {
                    checkThirdParty = false,
                    library = {
                        vim.api.nvim_get_runtime_file("", true),
                        '${3rd}/luv/library',
                    },
                },
                diagnostics = {
                    globals = { "vim", "require" },
                },
                -- Use Stylua for formatting
                format = { enable = false },
            },
        },
    },
    basedpyright = {
        settings = {},
    },
    ruff = {
        settings = {},
    },
}

---@type LazySpec
return {
    "neovim/nvim-lspconfig",

    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {},
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                ensure_installed = vim.tbl_keys(servers),
            },
        },
    },

    event = { "BufReadPre", "BufNewFile" },

    init = function()
        for server, cfg in pairs(servers) do
            vim.lsp.config(server, cfg)
            vim.lsp.enable(server)
        end
    end,
}
