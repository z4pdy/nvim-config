return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "ga", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gl", vim.diagnostic.open_float)
            end
        })
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "jdtls", "clangd" },
        })
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { "vim" },
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        -- Do not send telemetry data containing a randomized but unique identifier
                        enable = false
                    }
                }
            }
        })
        vim.lsp.enable("lua_ls")

        local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
        local workspace_dir = vim.fn.stdpath("cache") .. "/jdtls/" .. project_name

        vim.lsp.config("jdtls", {
            capabilities = capabilities,
            cmd = { "jdtls", "-data", workspace_dir },
        })
        vim.lsp.enable("jdtls")

        vim.lsp.config("clangd", {
            capabilities = capabilities
        })
        vim.lsp.enable("clangd")
    end
}
