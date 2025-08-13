---@module "lazy"
---@type LazySpec
return {
    "folke/snacks.nvim",

    priority = 1000,
    lazy = false,

    dependencies = {
        {
            "lewis6991/gitsigns.nvim",
            event = "VeryLazy",
            config = true,
        },
    },

    ---@module "snacks"
    ---@type snacks.Config
    opts = {
        -- Warning when opening large files
        bigfile = { enabled = true },
        -- Render file before loading plugins
        quickfile = { enabled = true },
        -- Smooth scrolling
        scroll = { enabled = true },
        -- Highlight same tokens in the file
        words = { enabled = true },
        -- Dashboard setup
        -- PERF: could be moved in another file for better organization
        -- dashboard = {
        --     enabled = true,
        --     sections = {
        --         -- { section = "header", padding = 1 },
        --         { pane = 1, section = "startup", padding = 2 },
        --         { pane = 2, padding = 2 },
        --         { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        --         { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        --         { pane = 1, section = "keys", gap = 1, padding = 1 },
        --     },
        -- },
        indent = {
            enabled = true,
            animate = {
                enabled = false,
            },
        },
        notifier = {
            enabled = true,
            timeout = 5000,
            style = "fancy",
        },
        explorer = { -- Replace Yazi???
            enabled = true,
        },
        -- TODO: check possible config
        statuscolumn = { enabled = true },
        input = { enabled = false },
        scope = { enabled = false },
        lazygit = { enabled = true },
        picker = {
            layout = {
                preset = "ivy",
                cycle = "false",
            },
        },
    },

    keys = {
        {
            "<leader><space>",
            function()
                Snacks.picker.smart()
            end,
            desc = "Smart Find Files",
        },
        {
            "<leader>f",
            function()
                Snacks.picker.files({ hidden = true })
            end,
            desc = "",
        },
        {
            "<leader>g",
            function()
                Snacks.picker.git_files({ hidden = true })
            end,
            desc = "",
        },
        {
            "<leader>gl",
            function()
                Snacks.lazygit.log()
            end,
        },
        {
            "<leader>go",
            function()
                Snacks.lazygit.open()
            end,
        },
        {
            "<leader>n",
            function()
                Snacks.picker.notifications()
            end,
            desc = "Notification History",
        },
        {
            "<leader>e",
            function()
                Snacks.explorer()
            end,
            desc = "File Explorer",
        },
        {
            "<leader>gb",
            function()
                Snacks.picker.git_branches({ layout = "select" })
            end,
            desc = "Git Branches",
        },
        {
            "<leader>gl",
            function()
                Snacks.picker.git_log()
            end,
            desc = "Git Log",
        },
        {
            "<leader>gL",
            function()
                Snacks.picker.git_log_line()
            end,
            desc = "Git Log Line",
        },
        {
            "<leader>gs",
            function()
                Snacks.picker.git_status()
            end,
            desc = "Git Status",
        },
        {
            "<leader>gS",
            function()
                Snacks.picker.git_stash()
            end,
            desc = "Git Stash",
        },
        {
            "<leader>gd",
            function()
                Snacks.picker.git_diff()
            end,
            desc = "Git Diff (Hunks)",
        },
        {
            "<leader>gf",
            function()
                Snacks.picker.git_log_file()
            end,
            desc = "Git Log File",
        },
    },
}
