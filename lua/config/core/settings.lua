vim.opt.nu = true
vim.opt.rnu = true

local tab_size = 4
vim.opt.tabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.softtabstop = tab_size
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "javascript",
        "javascriptreact",
        "css",
        "html",
        "json",
    },
    callback = function()
        local small_tab_size = 2
        vim.bo.tabstop = small_tab_size
        vim.bo.shiftwidth = small_tab_size
        vim.bo.softtabstop = small_tab_size
        vim.bo.expandtab = true
    end,
})



vim.opt.scrolloff = 20

vim.opt.updatetime = 50

vim.opt.syntax = "on"
vim.opt.signcolumn = "yes"
vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,
})

vim.opt.termguicolors = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.foldenable = false
