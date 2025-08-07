---@module "lazy"
---@type LazySpec
return {
    "mason-org/mason-lspconfig.nvim",

    enabled = false,

    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        { "neovim/nvim-lspconfig" },
    }
}
