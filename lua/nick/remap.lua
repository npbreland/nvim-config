local nnoremap = require("nick.keymap").nnoremap
local builtin = require("telescope.builtin")

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- wincmd
nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>j", ":wincmd j<CR>")
nnoremap("<leader>k", ":wincmd k<CR>")
nnoremap("<leader>l", ":wincmd l<CR>")

-- Telescope
nnoremap("ff", function() builtin.find_files() end, {})
nnoremap("fg", builtin.live_grep, {})
nnoremap("fb", builtin.buffers, {})
nnoremap("fh", builtin.help_tags, {})

-- LSP Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
nnoremap("<space>e", vim.diagnostic.open_float, opts)
nnoremap('[d', vim.diagnostic.goto_prev, opts)
nnoremap(']d', vim.diagnostic.goto_next, opts)
nnoremap('<space>q', vim.diagnostic.setloclist, opts)
