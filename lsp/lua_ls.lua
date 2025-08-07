---@type vim.lsp.Config
return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = {
        ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git"
    },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT"
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            diagnostics = {
                globals = { "vim", "require" }
            },
            telemetry = {
                enable = false
            },
        }

    }
}
