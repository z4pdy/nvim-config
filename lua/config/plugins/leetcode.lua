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
            question_enter = {
                function()
                    vim.wo.foldenable = true
                    vim.cmd("Leet last_submit")
                    vim.keymap.set("n", "<leader>lt", "<cmd>Leet tabs<CR>", {
                        buffer = true,
                        desc = "LeetCode Tabs",
                    })

                    vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<CR>", {
                        buffer = true,
                        desc = "LeetCode Submit",
                    })

                    vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<CR>", {
                        buffer = true,
                        desc = "LeetCode Run",
                    })
                end,
            },
        },
        editor = {
            fold_imports = true,
        }
    },
}
