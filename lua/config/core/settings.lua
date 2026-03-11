vim.opt.nu = true
vim.opt.rnu = true

local tab_size = 4
vim.opt.tabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.softtabstop = tab_size
vim.opt.expandtab = true

vim.opt.scrolloff = 20

vim.opt.updatetime = 50

vim.opt.syntax = "on"
vim.opt.signcolumn = "yes"
vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,
})
