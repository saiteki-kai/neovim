---@diagnostic disable: missing-fields
---@module "lazy"
---@type LazySpec
return {
    "nvim-treesitter/nvim-treesitter",

    event = { "BufReadPost", "BufNewFile" },

    build = ":TSUpdate",

    ---@module "nvim-treesitter"
    ---@type TSConfig
    opts = {
        indent = {
            enable = true,
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        ensure_installed = {
            "markdown",
            "vimdoc",
            "vim",
            "json",
            "toml",
            "yaml",
            "bash",
            "lua",
            "gitignore",
            "python",
            "rust",
        },
        auto_install = true,
        sync_install = true,
    },
}
