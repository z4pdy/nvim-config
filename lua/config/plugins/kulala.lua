return {
    "mistweaverco/kulala.nvim",
    ft = { "http" },
    keys = {
        {
            "<leader>rr",
            function()
                require("kulala").run()
            end,
            desc = "Send request",
        },
        {
            "<leader>ra",
            function()
                require("kulala").run_all()
            end,
            desc = "Send all requests",
        },
    },
    config = function()
        require("kulala").setup({
            ui = {
                display_mode = "split",
                -- show_icons = false,
                -- winbar = true,
                -- winbar_labels_keymaps = true,
                default_winbar_panes = {
                    "body",
                    "headers",
                    "verbose",
                    "report",
                },
            }
        })
    end,
}
