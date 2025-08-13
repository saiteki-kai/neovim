---@module "lazy"
---@type LazySpec
return {
    -- Special comments
    {
        "folke/todo-comments.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            signs = false,
        },
    },
    -- Block comments
    {
        "numToStr/Comment.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    },
    -- Autopairs
    {
        "echasnovski/mini.pairs",
        event = "BufReadPre",
        opts = {},
    },
    -- Move blocks
    {
        "echasnovski/mini.move",
        event = "BufReadPre",
        opts = {},
    },
}
