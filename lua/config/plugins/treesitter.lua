return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local languages = { "lua", "c", "cpp" }
        require'nvim-treesitter'.install(languages) 

        -- highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function() vim.treesitter.start() end,
        })

        -- indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}
