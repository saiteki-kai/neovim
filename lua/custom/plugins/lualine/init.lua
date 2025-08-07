local branch = require("custom.plugins.lualine.components.branch")
local encoding = require("custom.plugins.lualine.components.encoding")
local fileformat = require("custom.plugins.lualine.components.fileformat")
local filename = require("custom.plugins.lualine.components.filename")
local filetype = require("custom.plugins.lualine.components.filetype")
-- local lazy = require("custom.plugins.lualine.components.lazy")
local lsp = require("custom.plugins.lualine.components.lsp")
-- local mason = require("custom.plugins.lualine.components.mason")
local mode = require("custom.plugins.lualine.components.mode")
local progress = require("custom.plugins.lualine.components.progress")

---@module "lazy"
---@type LazySpec
return {
    "nvim-lualine/lualine.nvim",

    event = { "BufReadPost", "BufNewFile" },

    opts = function()
        -- local custom_theme = require("lualine.themes.catppuccin")
        --
        -- local utils = require("catppuccin.utils.colors")
        -- local colors = require("catppuccin.palettes").get_palette()
        --
        -- custom_theme.normal.c.bg = utils.blend(colors.overlay0, colors.crust, 0.25)
        -- custom_theme.inactive.c.bg = utils.blend(colors.overlay0, colors.crust, 0.25)

        return {
            options = {
                -- theme = "vscode", --[[ custom_theme, ]]
                globalstatus = true,
                section_separators = "",
                component_separators = "",
                disabled_filetypes = { statusline = { "alpha", "snacks_dashboard" } },
            },
            -- tabline = {
            --     lualine_a = {},
            --     lualine_b = { "buffers" },
            --     lualine_c = {},
            --     lualine_x = { "%S" },
            --     lualine_y = {},
            --     lualine_z = { lazy, mason.component },
            -- },
            sections = {
                lualine_a = { mode },
                lualine_b = { branch, "diff" },
                lualine_c = { "diagnostics", filename },
                lualine_x = { lsp, filetype, encoding, fileformat },
                lualine_y = { "searchcount", progress },
            },
        }
    end,
}
