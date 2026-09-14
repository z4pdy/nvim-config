return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        ---@type lc.lang
        lang = "java",
        hooks = {
            enter = {
                function ()
                    vim.keymap.set("n", "<leader>lt", "<cmd>Leet tabs<CR>", {
                        buffer = false,
                    })

                    vim.keymap.set("n", "<leader>ll", "<cmd>Leet list<CR>", {
                        buffer = false,
                    })
                end
            },
            question_enter = {
                function()
                    vim.wo.foldenable = true
                    vim.cmd("Leet last_submit")

                    vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<CR>", {
                        buffer = true,
                    })

                    vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<CR>", {
                        buffer = true,
                    })
                end,
            },
        },
        editor = {
            fold_imports = true,
        }
    },
}
