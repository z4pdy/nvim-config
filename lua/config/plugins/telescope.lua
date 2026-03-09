return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("telescope").setup({
            defaults = {
                path_display = { "filename_first" },
                file_ignore_patterns = {
                    "%.git/"
                },
            },
        })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files({ hidden = true, no_ignore = false })
        end, { desc = 'Telescope find files (respect .gitignore files)' })

        vim.keymap.set('n', '<leader>fa', function()
            builtin.find_files({ hidden = true, no_ignore = true })
        end, { desc = 'Telescope find all files (include .gitignore files)' })

        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    end
}
