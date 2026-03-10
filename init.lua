require("config")

-- set current working directory to opened directory
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local arg = vim.fn.argv(0)
        if arg ~= "" then
            if vim.fn.isdirectory(arg) == 1 then
                vim.cmd.cd(vim.fn.fnameescape(arg))
            else
                vim.cmd.cd(vim.fn.fnameescape(vim.fn.fnamemodify(arg, ":h")))
            end
        end
    end,
})
