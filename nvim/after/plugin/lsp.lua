local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    'clangd',
    'lua_ls'
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
--local cmp_select = {behavior = cmp.SelectBehavior.Select}
--local cmp_mappings = lsp.defaults.cmp_mappings()

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })

    vim.keymap.set({ 'n', 'x' }, 'gq', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
end)

lsp.setup()


cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})
