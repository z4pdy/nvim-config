return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local languages = { "lua" }
        require'nvim-treesitter'.install(languages) 

        -- highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function() vim.treesitter.start() end,
        })

        -- folds
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'

        -- indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}
