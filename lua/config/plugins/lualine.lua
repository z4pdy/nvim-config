return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- better intergration with nvim-telescope
        vim.opt.showmode = false -- hide default mode indicator 
        vim.opt.laststatus = 3 -- always show status bar
        require('lualine').setup({
            options = {
                section_separators = { left = '', right = '' },
                component_separators = { left = '|', right = '|' }
            }
        })
    end,
}
