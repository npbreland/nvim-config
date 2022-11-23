vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.completeopt = "menu,menuone"
vim.opt.colorcolumn = "80"
vim.api.nvim_set_option("clipboard","unnamed")

vim.g.mapleader = " "

-- Apply PSR-12 on save to all PHP files
vim.api.nvim_create_autocmd({"BufWriteCmd"}, {
    pattern = {"*.php"},
    callback = function() 
        local bufname = vim.api.nvim_buf_get_name(0)
        local cmd_str = "php-cs-fixer fix %s --rules=@PSR12 --quiet"
        os.execute(string.format(cmd_str, bufname))
        vim.cmd(":e")
    end
})

