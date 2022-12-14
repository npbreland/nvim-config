-- Apply PSR-12 on save to all PHP files
vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = {"*.php"},
    callback = function() 
        local bufname = vim.api.nvim_buf_get_name(0)
        local cmd_str = "php-cs-fixer fix %s --rules=@PSR12 --quiet"
        cmd_str = string.format(cmd_str, bufname)
        print(vim.fn.system(cmd_str))
        vim.cmd('edit') -- reload
    end
})
