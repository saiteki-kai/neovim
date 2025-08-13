---@module "lazy"
---@type LazySpec
return {
    "saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets",
        "fang2hou/blink-copilot",
    },

    event = { "InsertEnter" },

    build = "cargo build --release",

    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "default",

            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },

            ["<Enter>"] = { "select_and_accept", "fallback" },
        },

        completion = {
            menu = {
                auto_show = true,
                draw = {
                    treesitter = { "lsp" },
                    cursorline_priority = 0,
                    gap = 1,
                    padding = 1,
                    columns = {
                        {
                            "label",
                            "label_description",
                            gap = 1,
                        },
                        {
                            "kind_icon",
                            "kind",
                            gap = 1,
                        },
                    },
                },
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 500,
            },
        },

        signature = {
            enabled = true,
        },

        cmdline = {
            enabled = true,
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer", "copilot" },
            providers = {
                copilot = {
                    name = "copilot",
                    module = "blink-copilot",
                    score_offset = 100,
                    async = true,
                },
            },
        },
    },

    config = function(_, opts)
        require("blink.cmp").setup(opts)

        local capabilities = require("blink.cmp").get_lsp_capabilities(nil, true)
        vim.lsp.config('*', { capabilities = capabilities })
    end,
}
