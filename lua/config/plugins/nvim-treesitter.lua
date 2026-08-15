return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local languages = {
            "lua",
            "c",
            "cpp",
            "java",
            "python",
            "html",
            "css",
            "json",
            "yaml",
            "dockerfile",
            "bash",
            "groovy",
            "javascript"
        }
        require'nvim-treesitter'.install(languages)

        -- highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = vim.list_extend(vim.deepcopy(languages), { "javascriptreact" }),
            callback = function() vim.treesitter.start() end,
        })

        -- indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}
