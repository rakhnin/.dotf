require('mason.settings').set({
    ui = {
        border = 'single'
    }
})

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup_nvim_cmp({
    documentation = {
        border = 'single',
    }
})

lsp.setup()

vim.diagnostic.config({
    float = {
        border = 'single',
    },
})

-- Fix Undefined global 'vim'
require 'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
